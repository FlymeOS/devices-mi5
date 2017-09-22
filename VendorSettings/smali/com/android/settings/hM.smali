.class Lcom/android/settings/hM;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# instance fields
.field final synthetic AK:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/hM;->AK:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/hM;->AK:Lcom/android/settings/SoundSettings;

    invoke-static {v0, p2}, Lcom/android/settings/SoundSettings;->a(Lcom/android/settings/SoundSettings;Landroid/content/Intent;)V

    .line 156
    :cond_0
    return-void
.end method
