.class Lorg/htmlparser/util/c;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Lorg/htmlparser/util/f;


# instance fields
.field final synthetic btK:Lorg/htmlparser/util/NodeList;

.field count:I


# direct methods
.method constructor <init>(Lorg/htmlparser/util/NodeList;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/htmlparser/util/c;->btK:Lorg/htmlparser/util/NodeList;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/util/c;->count:I

    return-void
.end method


# virtual methods
.method public NE()Lorg/htmlparser/a;
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lorg/htmlparser/util/c;->btK:Lorg/htmlparser/util/NodeList;

    monitor-enter v1

    .line 132
    :try_start_0
    iget v0, p0, Lorg/htmlparser/util/c;->count:I

    iget-object v2, p0, Lorg/htmlparser/util/c;->btK:Lorg/htmlparser/util/NodeList;

    invoke-static {v2}, Lorg/htmlparser/util/NodeList;->b(Lorg/htmlparser/util/NodeList;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v0, p0, Lorg/htmlparser/util/c;->btK:Lorg/htmlparser/util/NodeList;

    invoke-static {v0}, Lorg/htmlparser/util/NodeList;->c(Lorg/htmlparser/util/NodeList;)[Lorg/htmlparser/a;

    move-result-object v0

    iget v2, p0, Lorg/htmlparser/util/c;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlparser/util/c;->count:I

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Vector Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Om()Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lorg/htmlparser/util/c;->count:I

    iget-object v1, p0, Lorg/htmlparser/util/c;->btK:Lorg/htmlparser/util/NodeList;

    invoke-static {v1}, Lorg/htmlparser/util/NodeList;->b(Lorg/htmlparser/util/NodeList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
