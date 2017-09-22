.class Lcom/android/vendorsettings/iH;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingSettings.java"


# instance fields
.field final synthetic Co:Lcom/android/vendorsettings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/WifiCallingSettings;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/vendorsettings/iH;->Co:Lcom/android/vendorsettings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/iH;->setResultCode(I)V

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/iH;->Co:Lcom/android/vendorsettings/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/WifiCallingSettings;->a(Lcom/android/vendorsettings/WifiCallingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/iH;->Co:Lcom/android/vendorsettings/WifiCallingSettings;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/WifiCallingSettings;->a(Lcom/android/vendorsettings/WifiCallingSettings;Landroid/content/Intent;)V

    .line 150
    :cond_0
    return-void
.end method
