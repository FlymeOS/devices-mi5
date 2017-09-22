.class Lcom/android/settings/sound/j;
.super Lmiui/os/AsyncTaskWithProgress;
.source "AudioSettingsFragment.java"


# instance fields
.field final synthetic aqp:Lcom/android/settings/sound/i;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/i;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/settings/sound/j;->aqp:Lcom/android/settings/sound/i;

    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/sound/j;->aqp:Lcom/android/settings/sound/i;

    iget-object v0, v0, Lcom/android/settings/sound/i;->aqo:Lcom/android/settings/sound/h;

    iget-object v0, v0, Lcom/android/settings/sound/h;->aqn:Lcom/android/settings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/sound/AudioSettingsFragment;->k(Lcom/android/settings/sound/AudioSettingsFragment;)Lcom/android/settings/sound/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sound/k;->uk()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/j;->b([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected j(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/sound/j;->aqp:Lcom/android/settings/sound/i;

    iget-object v0, v0, Lcom/android/settings/sound/i;->aqo:Lcom/android/settings/sound/h;

    iget-object v0, v0, Lcom/android/settings/sound/h;->aqn:Lcom/android/settings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/sound/AudioSettingsFragment;->k(Lcom/android/settings/sound/AudioSettingsFragment;)Lcom/android/settings/sound/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/sound/k;->updateData(Ljava/util/List;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/sound/j;->aqp:Lcom/android/settings/sound/i;

    iget-object v0, v0, Lcom/android/settings/sound/i;->aqo:Lcom/android/settings/sound/h;

    iget-object v0, v0, Lcom/android/settings/sound/h;->aqn:Lcom/android/settings/sound/AudioSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/sound/AudioSettingsFragment;->a(Lcom/android/settings/sound/AudioSettingsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 411
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 412
    return-void
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings/sound/j;->aqp:Lcom/android/settings/sound/i;

    iget-object v0, v0, Lcom/android/settings/sound/i;->aqo:Lcom/android/settings/sound/h;

    iget-object v0, v0, Lcom/android/settings/sound/h;->aqn:Lcom/android/settings/sound/AudioSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/sound/AudioSettingsFragment;->a(Lcom/android/settings/sound/AudioSettingsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 406
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 398
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/j;->j(Ljava/util/List;)V

    return-void
.end method
