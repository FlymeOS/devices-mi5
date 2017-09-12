.class Lmiui/maml/data/Expression$StringExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringExpression"
.end annotation


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 495
    iput-object p1, p0, Lmiui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 496
    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lmiui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 504
    :goto_0
    return-wide v0

    .line 502
    :catch_0
    move-exception v0

    .line 504
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lmiui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    return-object v0
.end method
