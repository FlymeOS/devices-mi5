.class public Lmiui/maml/util/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x0"    # D
    .param p3, "y0"    # D

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Lmiui/maml/util/Utils$Point;->x:D

    .line 101
    iput-wide p3, p0, Lmiui/maml/util/Utils$Point;->y:D

    .line 102
    return-void
.end method


# virtual methods
.method public Offset(Lmiui/maml/util/Utils$Point;)V
    .locals 4
    .param p1, "a"    # Lmiui/maml/util/Utils$Point;

    .prologue
    .line 105
    iget-wide v0, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v2, p1, Lmiui/maml/util/Utils$Point;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/util/Utils$Point;->x:D

    .line 106
    iget-wide v0, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v2, p1, Lmiui/maml/util/Utils$Point;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/util/Utils$Point;->y:D

    .line 107
    return-void
.end method

.method minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;
    .locals 8
    .param p1, "a"    # Lmiui/maml/util/Utils$Point;

    .prologue
    .line 110
    new-instance v0, Lmiui/maml/util/Utils$Point;

    iget-wide v2, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v4, p1, Lmiui/maml/util/Utils$Point;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->y:D

    sub-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    return-object v0
.end method
