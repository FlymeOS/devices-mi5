.class public Lmiui/maml/data/RootExpression;
.super Lmiui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/RootExpression$VarVersionVisitor;,
        Lmiui/maml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lmiui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

.field private mVars:Lmiui/maml/data/Variables;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lmiui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V
    .locals 2
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 70
    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    .line 71
    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 81
    iput-object p1, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    .line 82
    iput-object p2, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    .line 83
    return-void
.end method

.method static synthetic access$002(Lmiui/maml/data/RootExpression;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/RootExpression;
    .param p1, "x1"    # Z

    .prologue
    .line 6
    iput-boolean p1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 175
    return-void
.end method

.method public addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V
    .locals 1
    .param p1, "version"    # Lmiui/maml/data/RootExpression$VarVersion;

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public evaluate()D
    .locals 6

    .prologue
    .line 91
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    if-nez v4, :cond_3

    .line 92
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    .line 93
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 95
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 96
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 97
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 103
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    .line 128
    :cond_1
    :goto_1
    iget-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v4

    .line 99
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 100
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_3
    const/4 v1, 0x0

    .line 106
    .local v1, "isChange":Z
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_5

    .line 107
    const/4 v1, 0x1

    .line 124
    :cond_4
    if-eqz v1, :cond_1

    .line 125
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    goto :goto_1

    .line 111
    :cond_5
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_4

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 113
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .line 114
    .local v3, "version":Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_6

    .line 115
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;->getVer(Lmiui/maml/data/Variables;)I

    move-result v2

    .line 116
    .local v2, "newVersion":I
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_6

    .line 117
    const/4 v1, 0x1

    .line 118
    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 112
    .end local v2    # "newVersion":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 133
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    if-nez v4, :cond_2

    .line 134
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    .line 136
    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 137
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 138
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 139
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    .line 165
    :cond_1
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v4

    .line 144
    :cond_2
    const/4 v1, 0x0

    .line 145
    .local v1, "isChange":Z
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_4

    .line 146
    const/4 v1, 0x1

    .line 161
    :cond_3
    if-eqz v1, :cond_1

    .line 162
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_4
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_3

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 150
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .line 151
    .local v3, "version":Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_5

    .line 152
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVars:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;->getVer(Lmiui/maml/data/Variables;)I

    move-result v2

    .line 153
    .local v2, "newVersion":I
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_5

    .line 154
    const/4 v1, 0x1

    .line 155
    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 149
    .end local v2    # "newVersion":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
