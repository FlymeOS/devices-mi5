.class public Lcom/miui/internal/analytics/PersistenceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/PersistenceHelper$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistenceHelper"

.field private static final ad:I = 0x1

.field private static final p:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/analytics/PersistenceHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ae:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private af:Lcom/miui/internal/analytics/c;

.field private ag:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder",
            "<",
            "Lcom/miui/internal/analytics/c;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder",
            "<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/miui/internal/analytics/PersistenceHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/PersistenceHelper$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/PersistenceHelper;->p:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ag:Lcom/miui/internal/analytics/ObjectBuilder;

    .line 34
    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ah:Lcom/miui/internal/analytics/ObjectBuilder;

    .line 51
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ah:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/TrackEvent;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 52
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ah:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/LogEvent;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 53
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ah:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/TrackPageViewEvent;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 56
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ag:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/b;

    const-string v2, "ANALYTICS.SQLITESTORE"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 58
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/miui/internal/analytics/PersistenceHelper;->f()V

    .line 62
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 63
    :try_start_0
    new-instance v0, Lcom/miui/internal/analytics/PersistenceHelper$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miui/internal/analytics/PersistenceHelper$a;-><init>(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/PersistenceHelper$1;)V

    invoke-virtual {v0}, Lcom/miui/internal/analytics/PersistenceHelper$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 71
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/PersistenceHelper$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/internal/analytics/PersistenceHelper;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/analytics/PersistenceHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ai:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/analytics/PersistenceHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ae:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Lcom/miui/internal/analytics/Event;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    invoke-virtual {p1, v0}, Lcom/miui/internal/analytics/Event;->writeEvent(Lcom/miui/internal/analytics/c;)V

    .line 134
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/analytics/PersistenceHelper;Lcom/miui/internal/analytics/Event;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/PersistenceHelper;->a(Lcom/miui/internal/analytics/Event;)V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ag:Lcom/miui/internal/analytics/ObjectBuilder;

    const-string v1, "ANALYTICS.SQLITESTORE"

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/c;

    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    .line 77
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/miui/internal/analytics/c;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/miui/internal/analytics/PersistenceHelper;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/miui/internal/analytics/PersistenceHelper;->p:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/PersistenceHelper;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ai:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 107
    iput-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ai:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    invoke-interface {v0}, Lcom/miui/internal/analytics/c;->close()V

    .line 110
    iput-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    .line 113
    :cond_0
    iput-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public readEvents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    invoke-interface {v0, p1}, Lcom/miui/internal/analytics/c;->d(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_3

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ah:Lcom/miui/internal/analytics/ObjectBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Event;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, v3}, Lcom/miui/internal/analytics/Event;->restore(Landroid/database/Cursor;)V

    .line 161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Item;

    .line 162
    invoke-virtual {v0}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/internal/analytics/Item;->idMatches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/miui/internal/analytics/Item;->isDispatch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    invoke-virtual {v1}, Lcom/miui/internal/analytics/Item;->getPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/analytics/Event;->setPolicy(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "PersistenceHelper"

    const-string v4, "IllegalArgumentException catched when readEvents from storage"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 181
    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public selectStore(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ag:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/c;

    .line 120
    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    invoke-interface {v1}, Lcom/miui/internal/analytics/c;->close()V

    .line 123
    :cond_0
    iput-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->af:Lcom/miui/internal/analytics/c;

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Event;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ai:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 143
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/miui/internal/analytics/PersistenceHelper;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public writeEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 137
    new-instance v0, Lcom/miui/internal/analytics/TrackEvent;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEvent(Lcom/miui/internal/analytics/Event;)V

    .line 138
    return-void
.end method
