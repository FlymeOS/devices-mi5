.class public Lcom/android/settings/sound/VolumeSeekBarPreference;
.super Lcom/android/settings/SeekBarPreference;
.source "VolumeSeekBarPreference.java"


# instance fields
.field private akt:I

.field private ark:Landroid/view/View;

.field private arl:Lcom/android/settings/sound/H;

.field private yU:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->akt:I

    .line 34
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setMax(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public cA(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->akt:I

    .line 71
    return-void
.end method

.method public f(Lcom/android/settings/sound/H;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->arl:Lcom/android/settings/sound/H;

    .line 95
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 57
    const v0, 0x7f13015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 58
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 61
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VolumeStreamStateView;

    .line 62
    iget v2, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->akt:I

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/VolumeStreamStateView;->cA(I)V

    .line 63
    invoke-virtual {v1}, Lcom/android/settings/sound/VolumeStreamStateView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->arl:Lcom/android/settings/sound/H;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->arl:Lcom/android/settings/sound/H;

    invoke-virtual {v1, v0}, Lcom/android/settings/sound/H;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    const v1, 0x7f0400f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->ark:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->ark:Landroid/view/View;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->h(IZ)V

    .line 81
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->yU:Z

    .line 86
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->yU:Z

    .line 91
    return-void
.end method

.method public uB()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->akt:I

    return v0
.end method

.method public uC()Lcom/android/settings/sound/H;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->arl:Lcom/android/settings/sound/H;

    return-object v0
.end method

.method public uD()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->ark:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/sound/VolumeSeekBarPreference;->ark:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 108
    :cond_0
    return-void
.end method
