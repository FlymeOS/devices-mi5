.class public Lcom/android/settings/applications/ProcessStatsMemDetail;
.super Lcom/android/settings/InstrumentedFragment;
.source "ProcessStatsMemDetail.java"


# instance fields
.field Ld:Z

.field Ln:[D

.field Ma:[J

.field Mb:D

.field Mc:D

.field Md:D

.field Me:D

.field Mf:D

.field Mg:D

.field private Mh:Landroid/view/ViewGroup;

.field private Mi:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/View;

.field mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V
    .locals 7

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    .line 134
    iget-wide v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mg:D

    div-double v0, p3, v0

    double-to-float v0, v0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, p3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 108
    const v0, 0x7f04000e

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    const v3, 0x7f040196

    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 118
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    return-void
.end method

.method private lf()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1301f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mh:Landroid/view/ViewGroup;

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1301fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->li()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->lj()V

    .line 103
    return-void
.end method

.method private li()V
    .locals 8

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 123
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ma:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ma:[J

    aget-wide v2, v2, v0

    long-to-float v2, v2

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 126
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mh:Landroid/view/ViewGroup;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ma:[J

    aget-wide v6, v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method

.method private lj()V
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0780

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Me:D

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0783

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Md:D

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0781

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mf:D

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 149
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ln:[D

    aget-wide v4, v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0782

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mb:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0784

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mc:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mi:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0785

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mg:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 158
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    const-string v1, "mem_times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ma:[J

    .line 65
    const-string v1, "mem_state_weights"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ln:[D

    .line 66
    const-string v1, "mem_cached_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mb:D

    .line 67
    const-string v1, "mem_free_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mc:D

    .line 68
    const-string v1, "mem_zram_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Md:D

    .line 69
    const-string v1, "mem_kernel_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Me:D

    .line 70
    const-string v1, "mem_native_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mf:D

    .line 71
    const-string v1, "mem_total_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Mg:D

    .line 72
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->Ld:Z

    .line 73
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const v0, 0x7f040109

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-static {p2, v0, v0, v1}, Lcom/android/settings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 82
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->lf()V

    .line 84
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 95
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x16

    return v0
.end method
