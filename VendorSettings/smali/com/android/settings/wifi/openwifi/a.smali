.class Lcom/android/vendorsettings/wifi/openwifi/a;
.super Ljava/lang/Object;
.source "FreeWifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/openwifi/a;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/a;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;->finish()V

    .line 61
    return-void
.end method
