.class Lcom/android/b/e/f;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# instance fields
.field private final aLd:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/e/f;->aLd:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/e/d;)V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/android/b/e/f;-><init>()V

    return-void
.end method


# virtual methods
.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/b/e/f;->aLd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 676
    if-nez v0, :cond_0

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 678
    iget-object v1, p0, Lcom/android/b/e/f;->aLd:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method r(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/b/e/f;->aLd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 671
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
