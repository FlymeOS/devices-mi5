.class public Lcom/bumptech/glide/load/engine/e;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/p;
.implements Lcom/bumptech/glide/load/engine/o;
.implements Lcom/bumptech/glide/load/engine/s;


# instance fields
.field private final aQC:Ljava/util/Map;

.field private final aQD:Lcom/bumptech/glide/load/engine/q;

.field private final aQE:Lcom/bumptech/glide/load/engine/b/o;

.field private final aQF:Lcom/bumptech/glide/load/engine/f;

.field private final aQG:Ljava/util/Map;

.field private final aQH:Lcom/bumptech/glide/load/engine/w;

.field private final aQI:Lcom/bumptech/glide/load/engine/g;

.field private aQJ:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/b/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/b/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/q;Ljava/util/Map;Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/w;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/o;Lcom/bumptech/glide/load/engine/b/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/q;Ljava/util/Map;Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/w;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->aQE:Lcom/bumptech/glide/load/engine/b/o;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/engine/g;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/g;-><init>(Lcom/bumptech/glide/load/engine/b/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQI:Lcom/bumptech/glide/load/engine/g;

    .line 74
    if-nez p7, :cond_0

    .line 75
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 77
    :cond_0
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    .line 79
    if-nez p6, :cond_1

    .line 80
    new-instance p6, Lcom/bumptech/glide/load/engine/q;

    invoke-direct {p6}, Lcom/bumptech/glide/load/engine/q;-><init>()V

    .line 82
    :cond_1
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/e;->aQD:Lcom/bumptech/glide/load/engine/q;

    .line 84
    if-nez p5, :cond_2

    .line 85
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    :cond_2
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/e;->aQC:Ljava/util/Map;

    .line 89
    if-nez p8, :cond_3

    .line 90
    new-instance p8, Lcom/bumptech/glide/load/engine/f;

    invoke-direct {p8, p3, p4, p0}, Lcom/bumptech/glide/load/engine/f;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/o;)V

    .line 92
    :cond_3
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/e;->aQF:Lcom/bumptech/glide/load/engine/f;

    .line 94
    if-nez p9, :cond_4

    .line 95
    new-instance p9, Lcom/bumptech/glide/load/engine/w;

    invoke-direct {p9}, Lcom/bumptech/glide/load/engine/w;-><init>()V

    .line 97
    :cond_4
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/e;->aQH:Lcom/bumptech/glide/load/engine/w;

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/b/o;->a(Lcom/bumptech/glide/load/engine/b/p;)V

    .line 100
    return-void
.end method

.method private CL()Ljava/lang/ref/ReferenceQueue;
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQJ:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQJ:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/bumptech/glide/load/engine/i;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/e;->aQJ:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/i;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQJ:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/r;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    if-nez p2, :cond_0

    .line 214
    :goto_0
    return-object v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 205
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/r;

    .line 207
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/r;->acquire()V

    :goto_1
    move-object v1, v0

    .line 214
    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V
    .locals 5

    .prologue
    .line 195
    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/h/d;->B(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/r;
    .locals 4

    .prologue
    .line 218
    if-nez p2, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/e;->e(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/r;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/r;->acquire()V

    .line 225
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    new-instance v2, Lcom/bumptech/glide/load/engine/j;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/e;->CL()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/bumptech/glide/load/engine/j;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private e(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/r;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQE:Lcom/bumptech/glide/load/engine/b/o;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/o;->j(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/v;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 237
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/r;

    if-eqz v1, :cond_1

    .line 239
    check-cast v0, Lcom/bumptech/glide/load/engine/r;

    goto :goto_0

    .line 241
    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/r;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/engine/r;-><init>(Lcom/bumptech/glide/load/engine/v;Z)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/load/engine/h;
    .locals 16

    .prologue
    .line 145
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/h/d;->EI()J

    move-result-wide v14

    .line 148
    invoke-interface/range {p4 .. p4}, Lcom/bumptech/glide/load/a/c;->getId()Ljava/lang/String;

    move-result-object v3

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/e;->aQD:Lcom/bumptech/glide/load/engine/q;

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->Dx()Lcom/bumptech/glide/load/d;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->Dy()Lcom/bumptech/glide/load/d;

    move-result-object v8

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->DA()Lcom/bumptech/glide/load/e;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->Dz()Lcom/bumptech/glide/load/a;

    move-result-object v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/q;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/p;

    move-result-object v3

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/e;->b(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/r;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_1

    .line 155
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->g(Lcom/bumptech/glide/load/engine/v;)V

    .line 156
    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "Loaded resource from cache"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/e;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 191
    :goto_0
    return-object v2

    .line 162
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/e;->a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/r;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_3

    .line 164
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/d;->g(Lcom/bumptech/glide/load/engine/v;)V

    .line 165
    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string v2, "Loaded resource from active resources"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/e;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 168
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/e;->aQC:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/k;

    .line 172
    if-eqz v2, :cond_5

    .line 173
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/request/d;)V

    .line 174
    const-string v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    const-string v4, "Added to existing load"

    invoke-static {v4, v14, v15, v3}, Lcom/bumptech/glide/load/engine/e;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 177
    :cond_4
    new-instance v3, Lcom/bumptech/glide/load/engine/h;

    move-object/from16 v0, p11

    invoke-direct {v3, v0, v2}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/k;)V

    move-object v2, v3

    goto :goto_0

    .line 180
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/e;->aQF:Lcom/bumptech/glide/load/engine/f;

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/load/engine/f;->c(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/k;

    move-result-object v13

    .line 181
    new-instance v2, Lcom/bumptech/glide/load/engine/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/load/engine/e;->aQI:Lcom/bumptech/glide/load/engine/g;

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/a;-><init>(Lcom/bumptech/glide/load/engine/p;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 183
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v0, p8

    invoke-direct {v4, v13, v2, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/Priority;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/e;->aQC:Ljava/util/Map;

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object/from16 v0, p11

    invoke-virtual {v13, v0}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/request/d;)V

    .line 186
    invoke-virtual {v13, v4}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 188
    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    const-string v2, "Started new load"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/e;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 191
    :cond_6
    new-instance v2, Lcom/bumptech/glide/load/engine/h;

    move-object/from16 v0, p11

    invoke-direct {v2, v0, v13}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/engine/k;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;)V
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/r;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/s;)V

    .line 263
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/r;->CP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/j;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/e;->CL()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/j;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/b;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQC:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/k;

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQC:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/r;)V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/r;->CP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQE:Lcom/bumptech/glide/load/engine/b/o;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/o;->b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQH:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/w;->i(Lcom/bumptech/glide/load/engine/v;)V

    goto :goto_0
.end method

.method public e(Lcom/bumptech/glide/load/engine/v;)V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 248
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/r;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/r;->release()V

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/bumptech/glide/load/engine/v;)V
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/bumptech/glide/h/h;->EK()V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->aQH:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/w;->i(Lcom/bumptech/glide/load/engine/v;)V

    .line 284
    return-void
.end method
