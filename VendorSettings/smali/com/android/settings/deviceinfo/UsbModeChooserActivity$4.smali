.class Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$4;
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
    .line 107
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$4;->XO:Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity$4;->XO:Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 111
    return-void
.end method
