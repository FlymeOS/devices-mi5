.class final Lmiui/util/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field FL:I

.field final Ig:I

.field Ih:Z

.field final synthetic Ii:Lmiui/util/b;

.field mIndex:I


# direct methods
.method constructor <init>(Lmiui/util/b;I)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lmiui/util/b$a;->Ii:Lmiui/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/b$a;->Ih:Z

    .line 30
    iput p2, p0, Lmiui/util/b$a;->Ig:I

    .line 31
    invoke-virtual {p1}, Lmiui/util/b;->cL()I

    move-result v0

    iput v0, p0, Lmiui/util/b$a;->FL:I

    .line 32
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lmiui/util/b$a;->mIndex:I

    iget v1, p0, Lmiui/util/b$a;->FL:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/util/b$a;->Ii:Lmiui/util/b;

    iget v1, p0, Lmiui/util/b$a;->mIndex:I

    iget v2, p0, Lmiui/util/b$a;->Ig:I

    invoke-virtual {v0, v1, v2}, Lmiui/util/b;->f(II)Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lmiui/util/b$a;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/util/b$a;->mIndex:I

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/util/b$a;->Ih:Z

    .line 44
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lmiui/util/b$a;->Ih:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget v0, p0, Lmiui/util/b$a;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/b$a;->mIndex:I

    .line 53
    iget v0, p0, Lmiui/util/b$a;->FL:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/b$a;->FL:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/b$a;->Ih:Z

    .line 55
    iget-object v0, p0, Lmiui/util/b$a;->Ii:Lmiui/util/b;

    iget v1, p0, Lmiui/util/b$a;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/util/b;->K(I)V

    .line 56
    return-void
.end method
