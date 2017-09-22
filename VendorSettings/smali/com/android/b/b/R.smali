.class public final Lcom/android/b/b/R;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static aJN:Lcom/android/b/b/R;


# instance fields
.field private final QH:Lcom/android/b/b/J;

.field private final Qu:Lcom/android/b/b/Q;

.field private final Rt:Lcom/android/b/b/U;

.field private aJO:Landroid/content/Context;

.field private final aJP:Lcom/android/b/b/t;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/b/b/Q;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/android/b/b/R;->mContext:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/android/b/b/R;->Qu:Lcom/android/b/b/Q;

    .line 71
    new-instance v0, Lcom/android/b/b/J;

    invoke-direct {v0, p2, p0}, Lcom/android/b/b/J;-><init>(Landroid/content/Context;Lcom/android/b/b/R;)V

    iput-object v0, p0, Lcom/android/b/b/R;->QH:Lcom/android/b/b/J;

    .line 72
    new-instance v0, Lcom/android/b/b/t;

    iget-object v1, p0, Lcom/android/b/b/R;->Qu:Lcom/android/b/b/Q;

    iget-object v2, p0, Lcom/android/b/b/R;->QH:Lcom/android/b/b/J;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/b/b/t;-><init>(Lcom/android/b/b/Q;Lcom/android/b/b/J;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/b/b/R;->aJP:Lcom/android/b/b/t;

    .line 74
    new-instance v0, Lcom/android/b/b/U;

    iget-object v1, p0, Lcom/android/b/b/R;->Qu:Lcom/android/b/b/Q;

    iget-object v2, p0, Lcom/android/b/b/R;->QH:Lcom/android/b/b/J;

    iget-object v3, p0, Lcom/android/b/b/R;->aJP:Lcom/android/b/b/t;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/b/b/U;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/t;)V

    iput-object v0, p0, Lcom/android/b/b/R;->Rt:Lcom/android/b/b/U;

    .line 76
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/android/b/b/S;)Lcom/android/b/b/R;
    .locals 4

    .prologue
    .line 51
    const-class v1, Lcom/android/b/b/R;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/b/b/R;->aJN:Lcom/android/b/b/R;

    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Lcom/android/b/b/Q;->Aa()Lcom/android/b/b/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 64
    :goto_0
    monitor-exit v1

    return-object v0

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 58
    new-instance v3, Lcom/android/b/b/R;

    invoke-direct {v3, v0, v2}, Lcom/android/b/b/R;-><init>(Lcom/android/b/b/Q;Landroid/content/Context;)V

    sput-object v3, Lcom/android/b/b/R;->aJN:Lcom/android/b/b/R;

    .line 59
    if-eqz p1, :cond_1

    .line 60
    sget-object v0, Lcom/android/b/b/R;->aJN:Lcom/android/b/b/R;

    invoke-interface {p1, v2, v0}, Lcom/android/b/b/S;->a(Landroid/content/Context;Lcom/android/b/b/R;)V

    .line 64
    :cond_1
    sget-object v0, Lcom/android/b/b/R;->aJN:Lcom/android/b/b/R;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Af()Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/b/b/R;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method public Ag()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/b/b/R;->aJO:Landroid/content/Context;

    return-object v0
.end method

.method public Ah()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/b/b/R;->aJO:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ai()Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/b/b/R;->QH:Lcom/android/b/b/J;

    return-object v0
.end method

.method public Aj()Lcom/android/b/b/t;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/b/b/R;->aJP:Lcom/android/b/b/t;

    return-object v0
.end method

.method public Ak()Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/b/b/R;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method

.method public declared-synchronized cP(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 96
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p1, p0, Lcom/android/b/b/R;->aJO:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/b/b/R;->aJO:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/b/R;->aJO:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
