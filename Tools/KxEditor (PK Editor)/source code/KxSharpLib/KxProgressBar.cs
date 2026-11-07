using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace KxSharpLib
{
    public class KxProgressBar : ProgressBar
    {

        #region GradientColorTop
        private Color gradientcolortop = Color.White;
        [DefaultValue(typeof(Color), "White")]
        [Category("Kx")]
        [DisplayName("Top Gradient Color")]
        [Description("The top gradient color.")]
        public Color GradientColorTop
        {
            get { return gradientcolortop; }
            set { gradientcolortop = value; Invalidate(); }
        }
        #endregion

        #region GradientColorBottom
        private Color gradientcolorbottom = Color.White;
        [DefaultValue(typeof(Color), "Black")]
        [Category("Kx")]
        [DisplayName("Bottom Gradient Color")]
        [Description("The bottom gradient color.")]
        public Color GradientColorBottom
        {
            get { return gradientcolorbottom; }
            set { gradientcolorbottom = value; Invalidate(); }
        }
        #endregion

        #region LinearGradientMode
        private LinearGradientMode gradientmode = LinearGradientMode.Vertical;
        [DefaultValue(typeof(LinearGradientMode), "Vertical")]
        [Category("Kx")]
        [DisplayName("Linear Gradient Mode")]
        [Description("The Linear Gradient Mode.")]
        public LinearGradientMode GradientMode
        {
            get { return gradientmode; }
            set { gradientmode = value; Invalidate(); }
        }
        #endregion


        public KxProgressBar()
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.UserPaint | ControlStyles.DoubleBuffer | ControlStyles.OptimizedDoubleBuffer, true);
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            Graphics gfx = e.Graphics;
            Rectangle rec = new Rectangle(0, 0, Width, Height);
            double scaleFactor = (((double)Value - (double)Minimum) / ((double)Maximum - (double)Minimum));
            int currentWidth = (int)((rec.Width * scaleFactor));

            using (SolidBrush brush = new SolidBrush(GradientColorTop))
            {
                gfx.FillRectangle(brush, rec);
            }

            using (LinearGradientBrush brush = new LinearGradientBrush(rec, GradientColorTop, GradientColorBottom, GradientMode))
            {
                rec.Width = currentWidth;
                if (rec.Width == 0) rec.Width = 1;
                gfx.FillRectangle(brush, rec);
            }

            using (SolidBrush sb = new SolidBrush(Color.GreenYellow))
            {
                using (Font font = new Font("Ink Free", 10f, FontStyle.Bold))
                {
                    SizeF sz = gfx.MeasureString("Loading . . .", font);
                    PointF pf = new PointF((Width - sz.Width) / 2F, (Height - sz.Height) / 2F);
                    gfx.DrawString("Loading . . .", font, sb, pf);
                }
            }
        }
    }
}