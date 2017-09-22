.class Lcom/android/b/a/q;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# instance fields
.field final aIQ:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic aIR:Lcom/android/b/a/a;

.field mRunning:Z


# direct methods
.method constructor <init>(Lcom/android/b/a/a;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    .line 813
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 988
    new-instance v0, Lcom/android/b/a/r;

    invoke-direct {v0, p0}, Lcom/android/b/a/r;-><init>(Lcom/android/b/a/q;)V

    iput-object v0, p0, Lcom/android/b/a/q;->aIQ:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 814
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x6

    const/4 v2, 0x0

    .line 819
    const/4 v0, 0x0

    .line 820
    iget-object v1, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 821
    :try_start_0
    iget-object v3, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aId:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 823
    iget-object v3, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v3, v0

    .line 825
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    if-eqz v3, :cond_0

    move v1, v2

    .line 827
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 828
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zp()V

    .line 827
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 825
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 832
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 986
    :goto_2
    :pswitch_0
    return-void

    .line 837
    :pswitch_1
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v5, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v5

    move v4, v2

    .line 839
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    if-ge v2, v7, :cond_3

    .line 840
    iget-boolean v0, p0, Lcom/android/b/a/q;->mRunning:Z

    if-nez v0, :cond_1

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/q;->mRunning:Z

    .line 842
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v1, 0x6

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/b/a/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    invoke-virtual {v1, v0}, Lcom/android/b/a/u;->sendMessage(Landroid/os/Message;)Z

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIg:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 847
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 848
    iget-object v1, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    .line 849
    add-int/lit8 v1, v2, 0x1

    .line 850
    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    invoke-static {v2, v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;Landroid/content/pm/ApplicationInfo;)Lcom/android/b/a/o;

    move v3, v1

    .line 852
    :goto_4
    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v1, v1, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/a/o;

    .line 861
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v2, v6

    if-nez v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    goto/16 :goto_3

    .line 869
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 871
    if-lt v2, v7, :cond_4

    .line 872
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 869
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 874
    :cond_4
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 875
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 877
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 881
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move v3, v2

    .line 884
    :goto_5
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 885
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 886
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 888
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v8, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v8

    .line 890
    :try_start_4
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 891
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    move v4, v2

    .line 892
    :goto_6
    if-ge v4, v9, :cond_7

    .line 893
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 894
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/a/o;

    .line 895
    if-eqz v1, :cond_6

    .line 896
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/b/a/o;->aII:Z

    .line 892
    :goto_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6

    .line 898
    :cond_6
    const-string v1, "ApplicationsState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " on user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 903
    :catchall_2
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_7
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 884
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 906
    :cond_8
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    invoke-virtual {v0, v13}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 907
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    invoke-virtual {v0, v13}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 909
    :cond_9
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 943
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/b/a/q;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 947
    :pswitch_4
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v1, v0, Lcom/android/b/a/a;->aIe:Landroid/util/SparseArray;

    monitor-enter v1

    .line 949
    :try_start_6
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIi:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 951
    monitor-exit v1

    goto/16 :goto_2

    .line 983
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 953
    :cond_a
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 954
    :goto_8
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    .line 955
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIf:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 956
    iget-wide v6, v0, Lcom/android/b/a/o;->size:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_b

    iget-boolean v3, v0, Lcom/android/b/a/o;->aIM:Z

    if-eqz v3, :cond_f

    .line 957
    :cond_b
    iget-wide v2, v0, Lcom/android/b/a/o;->aIN:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c

    iget-wide v2, v0, Lcom/android/b/a/o;->aIN:J

    const-wide/16 v6, 0x4e20

    sub-long v6, v4, v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_e

    .line 959
    :cond_c
    iget-boolean v2, p0, Lcom/android/b/a/q;->mRunning:Z

    if-nez v2, :cond_d

    .line 960
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/b/a/q;->mRunning:Z

    .line 961
    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v3, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/android/b/a/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 963
    iget-object v3, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v3, v3, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    invoke-virtual {v3, v2}, Lcom/android/b/a/u;->sendMessage(Landroid/os/Message;)Z

    .line 965
    :cond_d
    iput-wide v4, v0, Lcom/android/b/a/o;->aIN:J

    .line 966
    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v3, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/b/a/a;->aIi:Ljava/lang/String;

    .line 967
    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v2, Lcom/android/b/a/a;->aIj:I

    .line 968
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIi:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget v3, v3, Lcom/android/b/a/a;->aIj:I

    iget-object v4, p0, Lcom/android/b/a/q;->aIQ:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 972
    :cond_e
    monitor-exit v1

    goto/16 :goto_2

    .line 954
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 975
    :cond_10
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 976
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/b/a/u;->sendEmptyMessage(I)Z

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/q;->mRunning:Z

    .line 978
    iget-object v0, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v0, v0, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/b/a/u;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 980
    iget-object v2, p0, Lcom/android/b/a/q;->aIR:Lcom/android/b/a/a;

    iget-object v2, v2, Lcom/android/b/a/a;->aIn:Lcom/android/b/a/u;

    invoke-virtual {v2, v0}, Lcom/android/b/a/u;->sendMessage(Landroid/os/Message;)Z

    .line 983
    :cond_11
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_2

    :cond_12
    move v3, v2

    goto/16 :goto_4

    :cond_13
    move-object v3, v0

    goto/16 :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
