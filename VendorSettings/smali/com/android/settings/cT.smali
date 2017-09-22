.class Lcom/android/vendorsettings/cT;
.super Landroid/content/BroadcastReceiver;
.source "EncryptionSettings.java"


# instance fields
.field final synthetic mH:Lcom/android/vendorsettings/EncryptionSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/EncryptionSettings;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/vendorsettings/cT;->mH:Lcom/android/vendorsettings/EncryptionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 54
    const-string v0, "vold_status"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    if-ne v1, v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/cT;->mH:Lcom/android/vendorsettings/EncryptionSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/EncryptionSettings;->a(Lcom/android/vendorsettings/EncryptionSettings;)Lcom/android/vendorsettings/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/cV;->dR()V

    goto :goto_0
.end method
