.class Lcom/android/vendorsettings/sound/i;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aqo:Lcom/android/vendorsettings/sound/h;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/h;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/vendorsettings/sound/i;->aqo:Lcom/android/vendorsettings/sound/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v0, p0, Lcom/android/vendorsettings/sound/i;->aqo:Lcom/android/vendorsettings/sound/h;

    iget-object v0, v0, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->j(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/vendorsettings/sound/i;->aqo:Lcom/android/vendorsettings/sound/h;

    iget-object v0, v0, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->j(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/i;->aqo:Lcom/android/vendorsettings/sound/h;

    iget-object v0, v0, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    new-instance v1, Lcom/android/vendorsettings/sound/j;

    iget-object v2, p0, Lcom/android/vendorsettings/sound/i;->aqo:Lcom/android/vendorsettings/sound/h;

    iget-object v2, v2, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-virtual {v2}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/sound/j;-><init>(Lcom/android/vendorsettings/sound/i;Landroid/app/FragmentManager;)V

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/sound/j;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->a(Lcom/android/vendorsettings/sound/AudioSettingsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 414
    return-void
.end method
