.class Lcom/android/vendorsettings/sound/h;
.super Landroid/os/AsyncTask;
.source "AudioSettingsFragment.java"


# instance fields
.field final synthetic aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/sound/h;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->i(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/vendorsettings/sound/h;->aqn:Lcom/android/vendorsettings/sound/AudioSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/AudioSettingsFragment;->l(Lcom/android/vendorsettings/sound/AudioSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/sound/i;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/sound/i;-><init>(Lcom/android/vendorsettings/sound/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
