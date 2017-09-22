.class Lcom/android/vendorsettings/wifi/be;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field final synthetic aFp:Lcom/android/vendorsettings/wifi/bd;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/bd;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/be;->aFp:Lcom/android/vendorsettings/wifi/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/be;->aFp:Lcom/android/vendorsettings/wifi/bd;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/wifi/bd;->a(Lcom/android/vendorsettings/wifi/bd;Landroid/nfc/Tag;)V

    .line 158
    return-void
.end method
