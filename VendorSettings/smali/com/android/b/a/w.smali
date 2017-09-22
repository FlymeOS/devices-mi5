.class public Lcom/android/b/a/w;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# instance fields
.field final synthetic aIR:Lcom/android/b/a/a;

.field final aIV:Lcom/android/b/a/s;

.field final aIW:Ljava/lang/Object;

.field aIX:Z

.field aIY:Z

.field aIZ:Lcom/android/b/a/p;

.field aJa:Ljava/util/Comparator;

.field aJb:Ljava/util/ArrayList;

.field aJc:Ljava/util/ArrayList;

.field mResumed:Z


# direct methods
.method constructor <init>(Lcom/android/b/a/a;Lcom/android/b/a/s;)V
    .locals 1

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/w;->aIW:Ljava/lang/Object;

    .line 584
    iput-object p2, p0, Lcom/android/b/a/w;->aIV:Lcom/android/b/a/s;

    .line 585
    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/p;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/b/a/w;->aIW:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v2, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 622
    :try_start_1
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aId:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/w;->aIX:Z

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/w;->aIY:Z

    .line 625
    iput-object p1, p0, Lcom/android/b/a/w;->aIZ:Lcom/android/b/a/p;

    .line 626
    iput-object p2, p0, Lcom/android/b/a/w;->aJa:Ljava/util/Comparator;

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a/w;->aJb:Ljava/util/ArrayList;

    .line 628
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/b/a/q;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/b/a/q;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 631
    iget-object v3, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    invoke-virtual {v3, v0}, Lcom/android/b/a/q;->sendMessage(Landroid/os/Message;)Z

    .line 633
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/android/b/a/w;->aJb:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 640
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 649
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/w;->aIY:Z

    .line 650
    iget-object v0, p0, Lcom/android/b/a/w;->aJb:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 633
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 651
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 644
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/b/a/w;->aIW:Ljava/lang/Object;

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 602
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    .line 604
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/b/a/a;->aIk:Z

    .line 605
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIm:Lcom/android/b/a/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/b/a/q;->removeMessages(ILjava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    invoke-virtual {v0}, Lcom/android/b/a/a;->zj()V

    .line 609
    :cond_0
    monitor-exit v1

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/b/a/w;->pause()V

    .line 718
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/android/b/a/w;->aJb:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/b/a/w;->aJb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/b/a/w;->aJc:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/android/b/a/w;->aJc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/android/b/a/w;->zq()V

    .line 729
    monitor-exit v1

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/w;->mResumed:Z

    .line 592
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/b/a/a;->aIk:Z

    .line 593
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    invoke-virtual {v0}, Lcom/android/b/a/a;->zg()V

    .line 595
    :cond_0
    monitor-exit v1

    .line 597
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zo()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 614
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zp()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 657
    iget-object v1, p0, Lcom/android/b/a/w;->aIW:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-boolean v2, p0, Lcom/android/b/a/w;->aIX:Z

    if-nez v2, :cond_0

    .line 659
    monitor-exit v1

    .line 714
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/b/a/w;->aIZ:Lcom/android/b/a/p;

    .line 663
    iget-object v3, p0, Lcom/android/b/a/w;->aJa:Ljava/util/Comparator;

    .line 664
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/b/a/w;->aIX:Z

    .line 665
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/b/a/w;->aIZ:Lcom/android/b/a/p;

    .line 666
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/b/a/w;->aJa:Ljava/util/Comparator;

    .line 667
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 671
    if-eqz v2, :cond_1

    .line 672
    invoke-interface {v2}, Lcom/android/b/a/p;->init()V

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 677
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v5, v5, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 678
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 680
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 682
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 683
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 684
    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/android/b/a/p;->a(Lcom/android/b/a/o;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 685
    :cond_2
    iget-object v6, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v6, v6, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v6

    .line 687
    :try_start_2
    iget-object v7, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v7, v7, Lcom/android/b/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/b/a/o;->cN(Landroid/content/Context;)V

    .line 689
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 682
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 667
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 678
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 691
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 695
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 697
    iget-object v1, p0, Lcom/android/b/a/w;->aIW:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_6
    iget-boolean v0, p0, Lcom/android/b/a/w;->aIX:Z

    if-nez v0, :cond_5

    .line 699
    iput-object v5, p0, Lcom/android/b/a/w;->aJc:Ljava/util/ArrayList;

    .line 700
    iget-boolean v0, p0, Lcom/android/b/a/w;->aIY:Z

    if-nez v0, :cond_6

    .line 701
    iput-object v5, p0, Lcom/android/b/a/w;->aJb:Ljava/util/ArrayList;

    .line 702
    iget-object v0, p0, Lcom/android/b/a/w;->aIW:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 711
    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 713
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 704
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/b/a/u;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 705
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/b/a/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 707
    iget-object v2, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    invoke-virtual {v2, v0}, Lcom/android/b/a/u;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 711
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method zq()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)V

    .line 736
    iget-object v0, p0, Lcom/android/b/a/w;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 738
    :cond_0
    return-void
.end method
