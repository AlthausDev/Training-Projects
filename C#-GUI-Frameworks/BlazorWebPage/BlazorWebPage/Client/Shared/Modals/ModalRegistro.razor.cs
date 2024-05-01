﻿using BlazorWebPage.Client.Pages;
using BlazorWebPage.Shared;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;

namespace BlazorWebPage.Client.Shared.Modals
{
    partial class ModalRegistro
    {

        [Parameter]
        public int Id { get; set; }
        private string checkPassword { get; set; } = string.Empty;
        private string UserName { get; set; } = string.Empty;
        private string Password { get; set; } = string.Empty;
        private string? Nombre { get; set; } = string.Empty;
        private string? Email { get; set; } = string.Empty;

        private bool IsDisabled = true;
        private string color = "black";

        [Parameter] public EventCallback<MouseEventArgs> Registrar { get; set; }
        [Parameter] public EventCallback<MouseEventArgs> Cerrar { get; set; }


        #region Handlers
        protected void OnClickRegistro()
        {
            User user = new(UserName, Password, Nombre, Email, DateTimeOffset.Now.ToString("dd-MM-yyyy"));
            Home.NewUser = user;
            Registrar.InvokeAsync();
        }

        protected void OnClickClose()
        {
            UserName = string.Empty;
            Password = string.Empty;
            checkPassword = string.Empty;
            Nombre = string.Empty;
            Email = string.Empty;
            Cerrar.InvokeAsync();
        }


        private void ValueChangeHandler()
        {
            IsDisabled = string.IsNullOrWhiteSpace(UserName) || string.IsNullOrWhiteSpace(Password) || CheckPasswordHandler();
        }

        private bool CheckPasswordHandler()
        {

            if (!Password.Equals(checkPassword))
            {
                color = "red";
                return true;
            }
            else
            {
                color = "black";
                return false;
            }

        }
        #endregion Handlers
    }
}

