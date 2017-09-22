.class public final Lcom/miui/internal/server/DropBoxManagerService;
.super Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DropBoxManagerService$a;,
        Lcom/miui/internal/server/DropBoxManagerService$b;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "DropBoxManagerService"

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"

.field private static final hA:I = 0x1

.field private static final hB:Z = false

.field private static final hC:Ljava/lang/String; = "dropbox:"

.field private static final hu:I = 0x3f480

.field private static final hv:I = 0x3e8

.field private static final hw:I = 0x1400

.field private static final hx:I = 0xa

.field private static final hy:I = 0xa

.field private static final hz:I = 0x1388

.field private static final p:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/server/DropBoxManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hD:Ljava/io/File;

.field private hE:Lcom/miui/internal/server/DropBoxManagerService$b;

.field private hF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/server/DropBoxManagerService$b;",
            ">;"
        }
    .end annotation
.end field

.field private hG:Landroid/os/StatFs;

.field private hH:I

.field private hI:I

.field private hJ:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$1;

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService$1;-><init>()V

    sput-object v0, Lcom/miui/internal/server/DropBoxManagerService;->p:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 96
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    .line 100
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    .line 101
    iput v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    .line 102
    iput v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hJ:J

    .line 109
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    .line 112
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$2;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 122
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->S()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;-><init>()V

    return-void
.end method

.method private S()V
    .locals 2

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hJ:J

    .line 135
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$3;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    invoke-virtual {v0}, Lcom/miui/internal/server/DropBoxManagerService$3;->start()V

    .line 145
    return-void
.end method

.method private declared-synchronized T()J
    .locals 10

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 669
    monitor-enter p0

    .line 670
    const/16 v3, 0x3e8

    .line 671
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v4, 0xf731400

    int-to-long v4, v4

    sub-long v4, v0, v4

    .line 672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    .line 674
    iget-wide v6, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v1, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-ge v1, v3, :cond_6

    .line 687
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 688
    iget-wide v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->hJ:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 693
    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 694
    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    .line 695
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    mul-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v3, v4

    .line 696
    const/high16 v4, 0x500000

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    div-int/2addr v4, v5

    .line 697
    const/4 v5, 0x0

    mul-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x64

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    .line 698
    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hJ:J

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    if-le v0, v1, :cond_5

    .line 717
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 718
    new-instance v3, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 719
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 720
    if-lez v1, :cond_9

    iget v5, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v6, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    sub-int/2addr v6, v2

    div-int/2addr v6, v1

    if-gt v5, v6, :cond_9

    .line 726
    :cond_3
    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    sub-int/2addr v0, v2

    div-int v2, v0, v1

    .line 729
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 730
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v1, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    if-ge v1, v4, :cond_a

    .line 746
    :cond_5
    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hI:I

    int-to-long v0, v0

    iget v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    mul-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 676
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 677
    if-eqz v1, :cond_7

    iget-object v6, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v7, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    sub-int/2addr v6, v7

    iput v6, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 678
    :cond_7
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v1, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v6, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v7, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    sub-int/2addr v6, v7

    iput v6, v1, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 679
    :cond_8
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 723
    :cond_9
    :try_start_2
    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    sub-int/2addr v2, v0

    .line 724
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 725
    goto :goto_1

    .line 731
    :cond_a
    :goto_2
    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    if-le v1, v2, :cond_4

    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 732
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/server/DropBoxManagerService$a;

    .line 733
    iget-object v4, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v5, v1, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 734
    :cond_b
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v6, v1, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    :cond_c
    :try_start_3
    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 738
    :cond_d
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget-object v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    iget-object v6, v1, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    iget-wide v8, v1, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 739
    :catch_0
    move-exception v1

    .line 740
    :try_start_4
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t write tombstone file"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized a(Ljava/io/File;Ljava/lang/String;I)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 627
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$a;

    const-wide/16 v2, 0x2710

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    .line 628
    const/4 v0, 0x0

    .line 629
    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 630
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/internal/server/DropBoxManagerService$a;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/server/DropBoxManagerService$a;

    .line 631
    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    move-object v11, v0

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget-wide v0, v0, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 638
    :cond_0
    if-eqz v11, :cond_3

    .line 639
    array-length v12, v11

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v6, v11, v10

    .line 640
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v2, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 641
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    iget-object v1, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 642
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v2, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 645
    :cond_1
    iget v0, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 646
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget-object v1, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    iget-object v3, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    iget v6, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    iget v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    invoke-direct/range {v0 .. v7}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$a;)V

    move-wide v0, v8

    .line 639
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v4, v0

    goto :goto_1

    .line 649
    :cond_2
    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    iget-object v6, v6, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 654
    :cond_3
    if-nez p1, :cond_4

    .line 655
    :try_start_1
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-direct {v0, v1, p2, v4, v5}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    :goto_3
    monitor-exit p0

    return-wide v4

    .line 657
    :cond_4
    :try_start_2
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    iget v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    move-object v1, p1

    move-object v3, p2

    move/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {p0, v0}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move-object v11, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/miui/internal/server/DropBoxManagerService$a;)V
    .locals 3

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    .line 608
    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    if-lez v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 610
    if-nez v0, :cond_0

    .line 611
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService$b;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    .line 612
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 615
    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$a;->hM:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$b;->hM:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_1
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/miui/internal/server/DropBoxManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic c(Lcom/miui/internal/server/DropBoxManagerService;)J
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/miui/internal/server/DropBoxManagerService;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miui/internal/server/DropBoxManagerService;->p:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService;

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 563
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    .line 564
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hG:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    if-nez v0, :cond_6

    .line 571
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 572
    if-nez v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_2
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/internal/server/DropBoxManagerService$b;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    .line 578
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    .line 579
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 580
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 578
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_3
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$a;

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    invoke-direct {v4, v3, v5}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(Ljava/io/File;I)V

    .line 586
    iget-object v5, v4, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 587
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 589
    :cond_4
    iget-wide v6, v4, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 590
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 595
    :cond_5
    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 598
    :cond_6
    monitor-exit p0

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 62
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-static {p1, v0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v0

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService;->S()V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lmiui/os/DropBoxManager$Entry;)V
    .locals 22

    .prologue
    .line 149
    const/4 v5, 0x0

    .line 150
    const/4 v4, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 154
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getFlags()I

    move-result v7

    .line 155
    and-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    :goto_0
    :try_start_1
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 231
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 232
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 233
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 235
    :cond_2
    :goto_3
    return-void

    .line 157
    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/internal/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 230
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 231
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 232
    :cond_5
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 233
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 159
    :cond_6
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->T()J

    move-result-wide v12

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 162
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    new-array v15, v2, [B

    .line 163
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 168
    const/4 v2, 0x0

    .line 169
    :goto_6
    array-length v6, v15

    if-ge v2, v6, :cond_7

    .line 170
    array-length v6, v15

    sub-int/2addr v6, v2

    invoke-virtual {v3, v15, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 171
    if-gtz v6, :cond_b

    .line 178
    :cond_7
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/internal/server/DropBoxManagerService;->hD:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "drop"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v16, ".tmp"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 179
    :try_start_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/internal/server/DropBoxManagerService;->hH:I

    .line 180
    const/16 v8, 0x1000

    if-le v5, v8, :cond_8

    const/16 v5, 0x1000

    .line 181
    :cond_8
    const/16 v8, 0x200

    if-ge v5, v8, :cond_14

    const/16 v5, 0x200

    move v8, v5

    .line 182
    :goto_7
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 183
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 184
    :try_start_9
    array-length v4, v15

    if-ne v2, v4, :cond_13

    and-int/lit8 v4, v7, 0x4

    if-nez v4, :cond_13

    .line 185
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 186
    or-int/lit8 v4, v7, 0x4

    move v7, v4

    move-object v4, v8

    .line 190
    :goto_8
    const/4 v5, 0x0

    :try_start_a
    invoke-virtual {v4, v15, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 193
    sub-long v18, v8, v10

    const-wide/16 v20, 0x7530

    cmp-long v2, v18, v20

    if-lez v2, :cond_12

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->T()J

    move-result-wide v10

    .line 198
    :goto_9
    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 199
    if-gtz v2, :cond_c

    .line 200
    invoke-static/range {v16 .. v16}, Lmiui/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 201
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 202
    const/4 v4, 0x0

    .line 207
    :goto_a
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 208
    cmp-long v5, v12, v10

    if-lez v5, :cond_d

    .line 209
    const-string v2, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " > "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " bytes)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 211
    const/4 v5, 0x0

    .line 216
    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v7}, Lcom/miui/internal/server/DropBoxManagerService;->a(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v6

    .line 217
    const/4 v5, 0x0

    .line 219
    new-instance v2, Landroid/content/Intent;

    const-string v8, "miui.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v8, "tag"

    invoke-virtual {v2, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v8, "time"

    invoke-virtual {v2, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 230
    if-eqz v4, :cond_9

    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 231
    :cond_9
    :goto_c
    if-eqz v3, :cond_a

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 232
    :cond_a
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 233
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 172
    :cond_b
    add-int/2addr v2, v6

    .line 173
    goto/16 :goto_6

    .line 204
    :cond_c
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_a

    .line 227
    :catch_1
    move-exception v2

    move-object v5, v6

    goto/16 :goto_0

    .line 214
    :cond_d
    if-gtz v2, :cond_11

    move-object v5, v6

    goto :goto_b

    .line 230
    :catchall_0
    move-exception v2

    :goto_e
    if-eqz v4, :cond_e

    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 231
    :cond_e
    :goto_f
    if-eqz v3, :cond_f

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 232
    :cond_f
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 233
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_10
    throw v2

    .line 230
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 231
    :catch_3
    move-exception v2

    goto/16 :goto_5

    .line 230
    :catch_4
    move-exception v2

    goto :goto_c

    .line 231
    :catch_5
    move-exception v2

    goto :goto_d

    .line 230
    :catch_6
    move-exception v2

    goto/16 :goto_1

    .line 231
    :catch_7
    move-exception v2

    goto/16 :goto_2

    .line 230
    :catch_8
    move-exception v4

    goto :goto_f

    .line 231
    :catch_9
    move-exception v3

    goto :goto_10

    .line 230
    :catchall_1
    move-exception v2

    move-object v5, v6

    goto :goto_e

    :catchall_2
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto :goto_e

    .line 227
    :catch_a
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_0

    :cond_11
    move-wide v12, v10

    move-wide v10, v8

    goto/16 :goto_8

    :cond_12
    move-wide v8, v10

    move-wide v10, v12

    goto/16 :goto_9

    :cond_13
    move-object v4, v5

    goto/16 :goto_8

    :cond_14
    move v8, v5

    goto/16 :goto_7
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const-string v2, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 302
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v4, v2, :cond_6

    .line 304
    aget-object v2, p3, v4

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p3, v4

    const-string v3, "--print"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    :cond_1
    const/4 v2, 0x1

    move v3, v2

    move v2, v9

    .line 303
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move v10, v3

    goto :goto_1

    .line 292
    :catch_0
    move-exception v2

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 306
    :cond_2
    :try_start_3
    aget-object v2, p3, v4

    const-string v3, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p3, v4

    const-string v3, "--file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    :cond_3
    const/4 v2, 0x1

    move v3, v10

    goto :goto_2

    .line 308
    :cond_4
    aget-object v2, p3, v4

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 309
    const-string v2, "Unknown argument: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v9

    move v3, v10

    goto :goto_2

    .line 311
    :cond_5
    aget-object v2, p3, v4

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v9

    move v3, v10

    goto :goto_2

    .line 315
    :cond_6
    const-string v2, "Drop box contents: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 318
    const-string v2, "Searching for:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 320
    :cond_7
    const-string v2, "\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 324
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 325
    const-string v3, "\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v4, v2

    :cond_9
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    move-object v8, v0

    .line 327
    iget-wide v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 328
    const-string v2, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    const/4 v3, 0x1

    .line 330
    const/4 v2, 0x0

    move/from16 v19, v2

    move v2, v3

    move/from16 v3, v19

    :goto_5
    move/from16 v0, v16

    if-ge v3, v0, :cond_c

    if-eqz v2, :cond_c

    .line 331
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x1

    .line 330
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 332
    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    .line 334
    :cond_c
    if-eqz v2, :cond_9

    .line 336
    add-int/lit8 v13, v4, 0x1

    .line 337
    if-eqz v10, :cond_d

    const-string v2, "========================================\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_d
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    if-nez v2, :cond_e

    const-string v2, "(no tag)"

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    if-nez v2, :cond_f

    .line 340
    const-string v2, " (no file)\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v13

    .line 341
    goto :goto_4

    .line 338
    :cond_e
    iget-object v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    goto :goto_7

    .line 342
    :cond_f
    iget v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    .line 343
    const-string v2, " (contents lost)\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v13

    .line 344
    goto :goto_4

    .line 346
    :cond_10
    const-string v2, " ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    const-string v2, "compressed "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_11
    iget v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1b

    const-string v2, "text"

    :goto_8
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, ", "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    if-nez v9, :cond_12

    if-eqz v10, :cond_14

    iget v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_14

    .line 353
    :cond_12
    if-nez v10, :cond_13

    const-string v2, "    "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_13
    iget-object v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_14
    iget v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    if-nez v10, :cond_15

    if-nez v9, :cond_19

    .line 358
    :cond_15
    const/4 v12, 0x0

    .line 359
    const/4 v11, 0x0

    .line 361
    :try_start_4
    new-instance v2, Lmiui/os/DropBoxManager$Entry;

    iget-object v3, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    iget-wide v4, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    iget-object v6, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    iget v7, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    invoke-direct/range {v2 .. v7}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 364
    if-eqz v10, :cond_1f

    .line 365
    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 366
    const/16 v3, 0x1000

    :try_start_6
    new-array v5, v3, [C

    .line 367
    const/4 v3, 0x0

    .line 369
    :cond_16
    :goto_9
    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .line 370
    if-gtz v6, :cond_1c

    .line 380
    if-nez v3, :cond_17

    const-string v3, "\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 392
    :cond_17
    :goto_a
    if-eqz v2, :cond_18

    :try_start_7
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 393
    :cond_18
    if-eqz v4, :cond_19

    .line 395
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 402
    :cond_19
    :goto_b
    if-eqz v10, :cond_1a

    :try_start_9
    const-string v2, "\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    move v4, v13

    .line 403
    goto/16 :goto_4

    .line 348
    :cond_1b
    const-string v2, "data"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 371
    :cond_1c
    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v14, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v3, v6, -0x1

    aget-char v3, v5, v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_1e

    const/4 v3, 0x1

    .line 375
    :goto_c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/high16 v7, 0x10000

    if-le v6, v7, :cond_16

    .line 376
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 377
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 388
    :catch_1
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v4

    move-object v4, v2

    move-object/from16 v2, v19

    .line 389
    :goto_d
    :try_start_b
    const-string v5, "*** "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v5, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 392
    if-eqz v4, :cond_1d

    :try_start_c
    invoke-virtual {v4}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 393
    :cond_1d
    if-eqz v3, :cond_19

    .line 395
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    .line 396
    :catch_2
    move-exception v2

    goto :goto_b

    .line 372
    :cond_1e
    const/4 v3, 0x0

    goto :goto_c

    .line 382
    :cond_1f
    const/16 v3, 0x46

    :try_start_e
    invoke-virtual {v2, v3}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x46

    if-ne v3, v5, :cond_21

    const/4 v3, 0x1

    .line 384
    :goto_e
    const-string v5, "    "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    const/16 v7, 0x2f

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    if-eqz v3, :cond_20

    const-string v3, " ..."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_20
    const-string v3, "\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object v4, v11

    goto/16 :goto_a

    .line 383
    :cond_21
    const/4 v3, 0x0

    goto :goto_e

    .line 392
    :catchall_1
    move-exception v2

    move-object v4, v12

    :goto_f
    if-eqz v4, :cond_22

    :try_start_f
    invoke-virtual {v4}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 393
    :cond_22
    if-eqz v11, :cond_23

    .line 395
    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 397
    :cond_23
    :goto_10
    :try_start_11
    throw v2

    .line 405
    :cond_24
    if-nez v4, :cond_25

    const-string v2, "(No entries found.)\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_25
    if-eqz p3, :cond_26

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_28

    .line 408
    :cond_26
    if-nez v10, :cond_27

    const-string v2, "\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_27
    const-string v2, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_28
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 396
    :catch_3
    move-exception v2

    goto/16 :goto_b

    :catch_4
    move-exception v3

    goto :goto_10

    .line 392
    :catchall_2
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto :goto_f

    :catchall_3
    move-exception v3

    move-object v11, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_f

    :catchall_4
    move-exception v2

    move-object v11, v3

    goto :goto_f

    .line 388
    :catch_5
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    goto/16 :goto_d

    :catch_6
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_d
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v3, "miui.permission.READ_LOGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "READ_LOGS permission required"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 256
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-nez p1, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hE:Lcom/miui/internal/server/DropBoxManagerService$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    :goto_0
    if-nez v2, :cond_2

    move-object v2, v9

    .line 279
    :goto_1
    monitor-exit p0

    return-object v2

    .line 257
    :catch_0
    move-exception v2

    .line 258
    :try_start_3
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v9

    .line 259
    goto :goto_1

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->hF:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/server/DropBoxManagerService$b;

    goto :goto_0

    .line 265
    :cond_2
    iget-object v2, v2, Lcom/miui/internal/server/DropBoxManagerService$b;->hN:Ljava/util/TreeSet;

    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$a;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/server/DropBoxManagerService$a;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$a;

    move-object v8, v0

    .line 266
    iget-object v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 267
    iget v2, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 268
    new-instance v2, Lmiui/os/DropBoxManager$Entry;

    iget-object v3, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    iget-wide v4, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    invoke-direct {v2, v3, v4, v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 271
    :cond_4
    :try_start_4
    new-instance v2, Lmiui/os/DropBoxManager$Entry;

    iget-object v3, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->tag:Ljava/lang/String;

    iget-wide v4, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->hL:J

    iget-object v6, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    iget v7, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->flags:I

    invoke-direct/range {v2 .. v7}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 273
    :catch_1
    move-exception v2

    .line 274
    :try_start_5
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lcom/miui/internal/server/DropBoxManagerService$a;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_5
    move-object v2, v9

    .line 279
    goto :goto_1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 241
    :try_start_0
    const-string v0, "disabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropbox:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 243
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
