.class Lmiui/maml/data/BaseFunctions$NullObjFunction;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullObjFunction"
.end annotation


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 125
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 5
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v4, -0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 129
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 132
    iput-object v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    :cond_0
    iput v4, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 139
    :cond_1
    :goto_0
    iget v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    if-ne v1, v4, :cond_4

    .line 142
    :cond_2
    :goto_1
    return-wide v2

    .line 136
    :cond_3
    iget-object v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    goto :goto_0

    .line 142
    :cond_4
    iget v1, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    invoke-virtual {p2, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method
