.class public Lcom/android/b/a/t;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/b/a/p;


# instance fields
.field private final aIT:Lcom/android/b/a/p;

.field private final aIU:Lcom/android/b/a/p;


# direct methods
.method public constructor <init>(Lcom/android/b/a/p;Lcom/android/b/a/p;)V
    .locals 0

    .prologue
    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    iput-object p1, p0, Lcom/android/b/a/t;->aIT:Lcom/android/b/a/p;

    .line 1489
    iput-object p2, p0, Lcom/android/b/a/t;->aIU:Lcom/android/b/a/p;

    .line 1490
    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;)Z
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/b/a/t;->aIT:Lcom/android/b/a/p;

    invoke-interface {v0, p1}, Lcom/android/b/a/p;->a(Lcom/android/b/a/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/a/t;->aIU:Lcom/android/b/a/p;

    invoke-interface {v0, p1}, Lcom/android/b/a/p;->a(Lcom/android/b/a/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/b/a/t;->aIT:Lcom/android/b/a/p;

    invoke-interface {v0}, Lcom/android/b/a/p;->init()V

    .line 1495
    iget-object v0, p0, Lcom/android/b/a/t;->aIU:Lcom/android/b/a/p;

    invoke-interface {v0}, Lcom/android/b/a/p;->init()V

    .line 1496
    return-void
.end method
