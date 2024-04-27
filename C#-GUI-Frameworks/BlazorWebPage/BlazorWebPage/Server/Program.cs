using BlazorWebPage.Server;
using BlazorWebPage.Server.Repository.Impl;
using BlazorWebPage.Server.Repository.Interfaces;
using BlazorWebPage.Server.Services.Impl;
using BlazorWebPage.Server.Services.Interfaces;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();

builder.Services.AddServerSideBlazor();
builder.Services.AddSingleton();

builder.Services.AddTransient<ITareaRepository, TareaRepository>();
builder.Services.AddTransient<IUserRepository, UserRepository>();

builder.Services.AddTransient<IWeatherForecastService, WeatherForecastService>();
builder.Services.AddTransient<ITareaService, TareaService>();
builder.Services.AddTransient<IUserService, UserService>();


builder.Services.AddRazorPages();

// Configurar la aplicaci�n
var app = builder.Build();

// Configurar el pipeline de solicitudes HTTP.
if (app.Environment.IsDevelopment())
{
    app.UseWebAssemblyDebugging();

}
else
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseBlazorFrameworkFiles();
app.UseStaticFiles();
app.UseRouting();

app.MapRazorPages();
app.MapControllers();
app.MapFallbackToFile("index.html");

app.Run();