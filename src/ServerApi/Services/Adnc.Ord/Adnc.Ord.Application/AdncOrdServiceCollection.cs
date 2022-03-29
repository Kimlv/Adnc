﻿using Adnc.Ord.Application.EventSubscribers;
using Adnc.Shared.Application.Contracts.Services;
using Microsoft.Extensions.Hosting;

namespace Adnc.Ord.Application
{
    public class AdncOrdServiceCollection : AdncServiceCollection, IAdncServiceCollection
    {
        public AdncOrdServiceCollection(IServiceCollection services)
        : base(services)
        {
        }

        public override void AddAdncServices()
        {
            AddEfCoreContext();

            AddMongoContext();

            var policies = GenerateDefaultRefitPolicies();
            var authServeiceAddress = _environment.IsDevelopment() ? "http://localhost:5010" : "adnc.usr.webapi";
            AddRpcService<IAuthRpcService>(authServeiceAddress, policies);
            var maintServiceAddress = _environment.IsDevelopment() ? "http://localhost:5020" : "adnc.maint.webapi";
            AddRpcService<IMaintRpcService>(maintServiceAddress, policies);
            var whseServiceAddress = _environment.IsDevelopment() ? "http://localhost:8065" : "adnc.whse.webapi";
            AddRpcService<IWhseRpcService>(whseServiceAddress, policies);

            AddEventBusSubscribers<CapEventSubscriber>();
        }
    }
}