.class Lcom/android/settings/gY;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# instance fields
.field final synthetic yq:Lcom/android/settings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/gY;->yq:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/settings/gY;->yq:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/RestrictedSettingsFragment;->a(Lcom/android/settings/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/gY;->yq:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->a(Lcom/android/settings/RestrictedSettingsFragment;Z)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/gY;->yq:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->b(Lcom/android/settings/RestrictedSettingsFragment;Z)Z

    .line 67
    :cond_0
    return-void
.end method
