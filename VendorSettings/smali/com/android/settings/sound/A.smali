.class Lcom/android/settings/sound/A;
.super Landroid/os/Handler;
.source "RingerVolumeFragment.java"


# instance fields
.field final synthetic aqV:Lcom/android/settings/sound/RingerVolumeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/sound/A;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/settings/sound/A;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment;->a(Lcom/android/settings/sound/RingerVolumeFragment;)V

    .line 121
    :cond_0
    return-void

    .line 113
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 114
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 115
    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeFragment;->access$100()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 116
    # getter for: Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I
    invoke-static {}, Lcom/android/settings/sound/RingerVolumeFragment;->access$100()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, v1, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/settings/sound/A;->aqV:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {v2, v0}, Lcom/android/settings/sound/RingerVolumeFragment;->a(Lcom/android/settings/sound/RingerVolumeFragment;I)V

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
