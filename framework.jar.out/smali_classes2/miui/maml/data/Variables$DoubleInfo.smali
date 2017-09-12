.class Lmiui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:D

.field mVersion:I


# direct methods
.method public constructor <init>(DI)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "version"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 23
    iput p3, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 24
    return-void
.end method


# virtual methods
.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 27
    iput-wide p1, p0, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 28
    iget v0, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 29
    return-void
.end method
