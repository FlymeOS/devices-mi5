.class Lcom/android/vendorsettings/wifi/bg;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aFp:Lcom/android/vendorsettings/wifi/bd;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/bd;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/bg;->aFp:Lcom/android/vendorsettings/wifi/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/bg;->aFp:Lcom/android/vendorsettings/wifi/bd;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/bd;->b(Lcom/android/vendorsettings/wifi/bd;)V

    .line 240
    return-void
.end method
