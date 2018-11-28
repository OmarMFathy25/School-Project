﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace School_Project.Presentation_Layer
{
    public partial class Login_Form : MetroFramework.Forms.MetroForm
    {
        Business_Layer.CLS_LOGIN  log = new Business_Layer.CLS_LOGIN();
        public Login_Form()
        {
            InitializeComponent();
        }

        private void Login_Form_Load(object sender, EventArgs e)
        {

        }

        private void metroTextBox1_Click(object sender, EventArgs e)
        {
            
        }
        private void btnLogin_Click_1(object sender, EventArgs e)
        {
            DataTable Dt = log.LOGIN(txtID.Text, txtPWD.Text);
            if (Dt.Rows.Count > 0)
            {
                MessageBox.Show("LOGIN SUCCESS ");
            }
            else
            {
                MessageBox.Show("LOGIN FAILED ");
            }
        }
    }
}
