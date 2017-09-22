.class Lcom/android/settings/af;
.super Landroid/content/BroadcastReceiver;
.source "BasePreferenceFragment.java"


# instance fields
.field final synthetic cv:Lcom/android/settings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BasePreferenceFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/af;->cv:Lcom/android/settings/BasePreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/af;->cv:Lcom/android/settings/BasePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/BasePreferenceFragment;->ab()Lcom/android/settings/fq;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/android/settings/fq;->notifyDataSetChanged()V

    .line 174
    :cond_1
    return-void
.end method
