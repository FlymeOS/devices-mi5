.class public Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# instance fields
.field NA:J

.field NB:Z

.field Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

.field Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->NE:Landroid/widget/TextView;

    move-object v3, v0

    .line 135
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 136
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NB:Z

    .line 137
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NA:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NA:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {p2, v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OQ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OQ:Ljava/lang/String;

    .line 117
    :goto_2
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iput-object v0, v4, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OR:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->NE:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-boolean v0, v0, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OT:Z

    if-eqz v0, :cond_5

    .line 124
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NB:Z

    if-nez v0, :cond_0

    .line 125
    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NB:Z

    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->NF:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Nz:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->NF:Landroid/widget/TextView;

    move-object v3, v0

    goto :goto_0

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    .line 147
    :goto_3
    if-eqz v0, :cond_8

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c05e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 145
    goto :goto_3

    .line 151
    :cond_8
    const-string v0, ""

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_3
.end method
