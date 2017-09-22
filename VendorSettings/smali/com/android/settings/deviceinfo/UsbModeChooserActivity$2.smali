.class Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$2;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic XO:Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$2;->XO:Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$2;->XO:Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->a(Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;I)V

    .line 97
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$2;->XO:Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 99
    return-void
.end method
