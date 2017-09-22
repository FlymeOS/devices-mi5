.class public Lcom/android/settings/sound/RingerVolumeFragment;
.super Lcom/android/settings/BaseFragment;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final aqM:[I

.field private static final aqO:[I

.field private static final aqP:[I

.field private static final aqQ:[I


# instance fields
.field private aqL:[Lcom/android/settings/sound/E;

.field private final aqN:[I

.field private aqR:[Landroid/widget/ImageView;

.field private aqS:[Lmiui/widget/SeekBar;

.field private aqT:Landroid/content/BroadcastReceiver;

.field private aqU:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqP:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqQ:[I

    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f1301af
        0x7f1301b3
        0x7f1301b7
        0x7f1301ba
        0x7f1301ac
        0x7f1301bb
    .end array-data

    .line 79
    :array_1
    .array-data 4
        0x2
        0x5
        0x4
        0x0
        0x3
        0x6
    .end array-data

    .line 88
    :array_2
    .array-data 4
        0x7f0200e3
        0x7f0200e0
        0x7f0200d8
        0x7f0200e1
        0x7f0200dd
        0x7f0200da
    .end array-data

    .line 97
    :array_3
    .array-data 4
        0x7f0200e2
        0x7f0200df
        0x7f0200d7
        0x7f0200e1
        0x7f0200dd
        0x7f0200d9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqN:[I

    .line 106
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqP:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqR:[Landroid/widget/ImageView;

    .line 107
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    array-length v0, v0

    new-array v0, v0, [Lmiui/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqS:[Lmiui/widget/SeekBar;

    .line 109
    new-instance v0, Lcom/android/settings/sound/A;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/A;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    .line 355
    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        0x7f0c03a9
        0x7f0c03aa
        0x7f0c03ab
        0x7f0c0e64
        0x7f0c03a8
        0x7f0c0e66
    .end array-data
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->uu()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/RingerVolumeFragment;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment;->cM(I)V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->sz()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private cM(I)V
    .locals 4

    .prologue
    .line 252
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    aget v1, v0, p1

    .line 253
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 255
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqR:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 256
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqR:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v2, 0x7f0200e4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqS:[Lmiui/widget/SeekBar;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqS:[Lmiui/widget/SeekBar;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/E;->cO(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqS:[Lmiui/widget/SeekBar;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/sound/E;->cN(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 271
    :cond_1
    return-void

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqR:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqP:[I

    aget v0, v0, p1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqQ:[I

    aget v0, v0, p1

    goto :goto_1
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/E;->stop()V

    .line 315
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aput-object v2, v1, v0

    .line 312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqT:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqT:Landroid/content/BroadcastReceiver;

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqU:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqU:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqU:Landroid/content/BroadcastReceiver;

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    return-void
.end method

.method private sz()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private uu()V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment;->cM(I)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f0400d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method protected a(Lcom/android/settings/sound/E;)V
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 293
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/E;->stopSample()V

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 332
    const v0, 0x7f0c0e67

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 333
    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 337
    return v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->cleanup()V

    .line 308
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 309
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 281
    sparse-switch p2, :sswitch_data_0

    .line 287
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 285
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 344
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->us()V

    .line 345
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 300
    invoke-virtual {v3}, Lcom/android/settings/sound/E;->stopSample()V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 303
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/E;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 141
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 142
    sget v0, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    const v0, 0x7f1301d8

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SeekBar;

    .line 144
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqS:[Lmiui/widget/SeekBar;

    aput-object v3, v0, v6

    .line 145
    sget-object v0, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    aget v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v8, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    new-instance v0, Lcom/android/settings/sound/E;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    aget v4, v1, v6

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->sz()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/E;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v8, v6

    .line 154
    :goto_1
    const v0, 0x7f1301d6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqR:[Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 158
    const v0, 0x7f1301d7

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqN:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    new-instance v1, Lcom/android/settings/sound/E;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Lcom/android/settings/sound/RingerVolumeFragment;->aqO:[I

    aget v4, v4, v6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/sound/E;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;I)V

    aput-object v1, v0, v6

    goto :goto_1

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->uu()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqT:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/android/settings/sound/B;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/B;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqT:Landroid/content/BroadcastReceiver;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqU:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/android/settings/sound/C;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/C;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqU:Landroid/content/BroadcastReceiver;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqU:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    const v0, 0x7f1301af

    .line 202
    const v1, 0x7f1301ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v1, 0x7f1301bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v1, 0x7f1301b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 216
    return-void

    .line 206
    :cond_4
    const v0, 0x7f1301b3

    goto :goto_2
.end method

.method us()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e67

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/sound/D;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/D;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e68

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    return-void
.end method

.method ut()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeFragment;->aqM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/E;->stopSample()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment;->aqL:[Lcom/android/settings/sound/E;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/E;->uv()V

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->uu()V

    .line 243
    return-void
.end method
