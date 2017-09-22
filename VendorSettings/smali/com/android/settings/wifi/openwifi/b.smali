.class Lcom/android/vendorsettings/wifi/openwifi/b;
.super Ljava/lang/Object;
.source "FreeWifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/openwifi/b;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/b;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;->finish()V

    .line 56
    return-void
.end method
