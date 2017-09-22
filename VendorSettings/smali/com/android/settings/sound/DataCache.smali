.class public Lcom/android/settings/sound/DataCache;
.super Ljava/util/LinkedHashMap;
.source "DataCache.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maximumCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/sound/DataCache;-><init>(II)V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 20
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/sound/DataCache;-><init>(IIF)V

    .line 21
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 25
    iput p1, p0, Lcom/android/settings/sound/DataCache;->maximumCapacity:I

    .line 26
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/sound/DataCache;->size()I

    move-result v0

    iget v1, p0, Lcom/android/settings/sound/DataCache;->maximumCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
