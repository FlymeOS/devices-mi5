.class public Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/b/a/s;


# instance fields
.field private final EV:Lcom/android/b/a/w;

.field private final Fh:Lcom/android/b/a/a;

.field private final HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

.field private HG:I

.field private final HH:I

.field private HI:Ljava/util/ArrayList;

.field private HJ:Ljava/util/ArrayList;

.field private HK:I

.field private HL:I

.field HM:Ljava/lang/CharSequence;

.field private HN:Lcom/android/b/a/p;

.field private HO:Ljava/util/Comparator;

.field private HP:Lcom/android/settings/applications/IconLoader;

.field private HQ:Landroid/widget/Filter;

.field private final mActive:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/b/a/a;Lcom/android/settings/applications/ApplicationsContainer$TabInfo;I)V
    .locals 3

    .prologue
    .line 587
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HL:I

    .line 565
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HQ:Landroid/widget/Filter;

    .line 588
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Fh:Lcom/android/b/a/a;

    .line 589
    invoke-virtual {p1, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    .line 590
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 591
    iget-object v0, p2, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 592
    iput p3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HH:I

    .line 593
    new-instance v0, Lcom/android/settings/applications/IconLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IconLoader-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/IconLoader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HP:Lcom/android/settings/applications/IconLoader;

    .line 594
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HP:Lcom/android/settings/applications/IconLoader;

    invoke-virtual {v0}, Lcom/android/settings/applications/IconLoader;->start()V

    .line 595
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 707
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-object p2

    .line 710
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 713
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 714
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 715
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 716
    invoke-virtual {v0}, Lcom/android/b/a/o;->zm()Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 719
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 722
    goto :goto_0
.end method

.method public aH(I)V
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    if-ne p1, v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->ak(Z)V

    goto :goto_0
.end method

.method public aI(I)Lcom/android/b/a/o;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    return-object v0
.end method

.method public aj(Z)V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public ak(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 648
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 649
    if-eqz v0, :cond_0

    .line 650
    iput v3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HL:I

    .line 654
    :goto_0
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HH:I

    packed-switch v0, :pswitch_data_0

    .line 660
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HN:Lcom/android/b/a/p;

    .line 663
    :goto_1
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    packed-switch v0, :pswitch_data_1

    .line 678
    sget-object v0, Lcom/android/b/a/a;->aIo:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HO:Ljava/util/Comparator;

    .line 681
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HN:Lcom/android/b/a/p;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HO:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/w;->a(Lcom/android/b/a/p;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 683
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 702
    :goto_3
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HL:I

    goto :goto_0

    .line 656
    :pswitch_0
    sget-object v0, Lcom/android/b/a/a;->aIw:Lcom/android/b/a/p;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HN:Lcom/android/b/a/p;

    goto :goto_1

    .line 665
    :pswitch_1
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HL:I

    packed-switch v0, :pswitch_data_2

    .line 673
    sget-object v0, Lcom/android/b/a/a;->aIp:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HO:Ljava/util/Comparator;

    goto :goto_2

    .line 667
    :pswitch_2
    sget-object v0, Lcom/android/b/a/a;->aIq:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HO:Ljava/util/Comparator;

    goto :goto_2

    .line 670
    :pswitch_3
    sget-object v0, Lcom/android/b/a/a;->aIr:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HO:Ljava/util/Comparator;

    goto :goto_2

    .line 687
    :cond_1
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    .line 688
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    .line 693
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 695
    if-nez v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 691
    :cond_2
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    goto :goto_4

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 663
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    .line 665
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public al(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 757
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 759
    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    iget-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Hd:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HL:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 762
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    iget-object v0, v0, Lcom/android/settings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer;->Fx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 770
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->ak(Z)V

    .line 775
    :cond_0
    return-void

    .line 762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 757
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    .line 742
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 744
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 634
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->release()V

    .line 635
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HP:Lcom/android/settings/applications/IconLoader;

    invoke-virtual {v0}, Lcom/android/settings/applications/IconLoader;->stop()V

    .line 636
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HQ:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v1

    .line 806
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->Hj:Landroid/view/View;

    .line 809
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 810
    monitor-enter v0

    .line 811
    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->Hi:Lcom/android/b/a/o;

    .line 812
    iget-object v3, v0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 813
    iget-object v3, v1, Lcom/android/settings/applications/AppViewHolder;->Hk:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_0
    iget-object v3, v1, Lcom/android/settings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 816
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HP:Lcom/android/settings/applications/IconLoader;

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/settings/applications/IconLoader;->a(Landroid/widget/ImageView;Lcom/android/b/a/o;I)V

    .line 817
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Hd:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HL:I

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 819
    iget-object v3, v1, Lcom/android/settings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 827
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    return-object v2

    .line 819
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public jA()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public jB()V
    .locals 2

    .prologue
    .line 779
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->ak(Z)V

    .line 782
    :cond_0
    return-void
.end method

.method public jC()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public jD()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HN:Lcom/android/b/a/p;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HO:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/w;->a(Lcom/android/b/a/p;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    .line 600
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HI:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 602
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HG:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HG:I

    if-le v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HG:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HG:I

    .line 607
    :cond_0
    return-void
.end method

.method public jz()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->ak(Z)V

    .line 749
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 627
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->pause()V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HF:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HG:I

    .line 630
    return-void
.end method

.method public resume(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 614
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 615
    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 616
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->resume()V

    .line 617
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->HK:I

    .line 618
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->ak(Z)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->aH(I)V

    goto :goto_0
.end method
