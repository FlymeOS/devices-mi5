.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field final LZ:Ljava/util/ArrayList;

.field OU:Lcom/android/settings/applications/RunningState$ProcessItem;

.field OV:Lcom/android/settings/applications/RunningState$UserState;

.field final OW:Ljava/util/ArrayList;

.field private OX:I

.field private OY:I

.field final mChildren:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .line 635
    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OX:I

    iput v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OY:I

    .line 639
    return-void
.end method

.method private b(Landroid/content/Context;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 642
    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OX:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OY:I

    if-eq v0, p3, :cond_2

    .line 643
    :cond_0
    iput p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OX:I

    .line 644
    iput p3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OY:I

    .line 645
    const v0, 0x7f0c05ef

    .line 646
    if-eq p2, v5, :cond_4

    .line 647
    if-eq p3, v5, :cond_3

    const v0, 0x7f0c05f2

    .line 653
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDescription:Ljava/lang/String;

    .line 656
    :cond_2
    return-void

    .line 647
    :cond_3
    const v0, 0x7f0c05f1

    goto :goto_0

    .line 650
    :cond_4
    if-eq p3, v5, :cond_1

    .line 651
    const v0, 0x7f0c05f0

    goto :goto_0
.end method


# virtual methods
.method ar(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 708
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OV:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v0, :cond_0

    .line 709
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    move v1, v2

    .line 710
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 712
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState$MergedItem;->ar(Landroid/content/Context;)Z

    .line 713
    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 710
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    move v1, v2

    .line 717
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 718
    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    .line 717
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 722
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 725
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OQ:Ljava/lang/String;

    .line 731
    :cond_2
    return v2
.end method

.method i(Landroid/content/Context;Z)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 659
    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OT:Z

    .line 661
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OV:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v0, :cond_4

    .line 667
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 668
    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OM:Landroid/content/pm/PackageItemInfo;

    .line 669
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OV:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OV:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->ON:Ljava/lang/CharSequence;

    .line 673
    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    move v1, v2

    move v3, v2

    move v4, v2

    .line 674
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 676
    iget v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OX:I

    add-int/2addr v4, v5

    .line 677
    iget v5, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OY:I

    add-int/2addr v3, v5

    .line 678
    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    cmp-long v5, v6, v10

    if-ltz v5, :cond_0

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    iget-wide v8, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 679
    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    .line 674
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OT:Z

    if-nez v0, :cond_3

    .line 683
    invoke-direct {p0, p1, v4, v3}, Lcom/android/settings/applications/RunningState$MergedItem;->b(Landroid/content/Context;II)V

    .line 704
    :cond_3
    return v2

    .line 686
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OM:Landroid/content/pm/PackageItemInfo;

    .line 687
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->ON:Ljava/lang/CharSequence;

    .line 688
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 690
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OT:Z

    if-nez v0, :cond_5

    .line 691
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OU:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->b(Landroid/content/Context;II)V

    .line 695
    :cond_5
    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    move v1, v2

    .line 696
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 698
    iget-wide v4, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->OP:J

    cmp-long v3, v4, v10

    if-ltz v3, :cond_6

    iget-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    iget-wide v6, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->OP:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    .line 699
    iget-wide v4, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->OP:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->OP:J

    .line 696
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    move v0, v2

    .line 691
    goto :goto_2
.end method
