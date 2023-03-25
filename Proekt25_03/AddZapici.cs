using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Proekt25_03
{
    public partial class AddZapici : Form
    {
        public AddZapici()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           Main frm = new Main();
            frm.Show();
            this.Hide();

        }

        private void AddZapici_Load(object sender, EventArgs e)
        {

        }
    }
}
