.class public Lmiui/maml/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public info:Lmiui/maml/data/Expression$OpeInfo;

.field public op:Lmiui/maml/data/Expression$Ope;

.field public token:Ljava/lang/String;

.field public type:Lmiui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 164
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 165
    iput-object p2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V
    .locals 1
    .param p1, "t"    # Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "o"    # Lmiui/maml/data/Expression$Ope;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 169
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 170
    iput-object p2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    .line 172
    iget-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v0}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v0

    invoke-static {v0}, Lmiui/maml/data/Expression$OpeInfo;->getOpeInfo(I)Lmiui/maml/data/Expression$OpeInfo;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    .line 173
    return-void
.end method
