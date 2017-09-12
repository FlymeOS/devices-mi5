.class Lmiui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$Tokenizer$Token;,
        Lmiui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    .line 177
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lmiui/maml/data/Expression$Tokenizer;->reset()V

    .line 179
    return-void
.end method


# virtual methods
.method public getToken()Lmiui/maml/data/Expression$Tokenizer$Token;
    .locals 22

    .prologue
    .line 191
    const/4 v5, 0x0

    .line 192
    .local v5, "bracketCount":I
    const/4 v7, -0x1

    .line 194
    .local v7, "bracketStart":I
    const/4 v6, 0x0

    .line 195
    .local v6, "bracketMode":I
    const/4 v3, 0x0

    .local v3, "bracket1":C
    const/4 v4, 0x0

    .line 196
    .local v4, "bracket2":C
    sget-object v16, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 199
    .local v16, "type":Lmiui/maml/data/Expression$Tokenizer$TokenType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12

    .line 200
    .local v12, "len":I
    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_19

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 202
    .local v8, "c":C
    if-nez v6, :cond_a

    .line 203
    const/16 v17, 0x23

    move/from16 v0, v17

    if-eq v8, v0, :cond_0

    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    .line 206
    :cond_0
    add-int/lit8 v11, v10, 0x1

    .local v11, "j":I
    :goto_1
    if-ge v11, v12, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    # invokes: Lmiui/maml/data/Expression;->isVariableChar(C)Z
    invoke-static/range {v17 .. v17}, Lmiui/maml/data/Expression;->access$200(C)Z

    move-result v17

    if-nez v17, :cond_2

    .line 210
    :cond_1
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_3

    .line 211
    const-string v17, "Expression"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "invalid variable name:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v17, 0x0

    .line 298
    .end local v8    # "c":C
    .end local v11    # "j":I
    :goto_2
    return-object v17

    .line 206
    .restart local v8    # "c":C
    .restart local v11    # "j":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 214
    :cond_3
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 215
    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    const/16 v17, 0x23

    move/from16 v0, v17

    if-ne v8, v0, :cond_4

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    move-object/from16 v17, v18

    goto :goto_2

    :cond_4
    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_3

    .line 216
    .end local v11    # "j":I
    :cond_5
    const/16 v17, 0x27

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 219
    const/4 v15, 0x0

    .line 220
    .local v15, "slash":Z
    add-int/lit8 v11, v10, 0x1

    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v12, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 222
    .local v9, "cc":C
    if-nez v15, :cond_7

    const/16 v17, 0x27

    move/from16 v0, v17

    if-ne v9, v0, :cond_7

    .line 226
    .end local v9    # "cc":C
    :cond_6
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 227
    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "\\\'"

    const-string v21, "\'"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .restart local v9    # "cc":C
    :cond_7
    const/16 v17, 0x5c

    move/from16 v0, v17

    if-ne v9, v0, :cond_8

    const/4 v15, 0x1

    .line 220
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 224
    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    .line 228
    .end local v9    # "cc":C
    .end local v11    # "j":I
    .end local v15    # "slash":Z
    :cond_9
    const/16 v17, 0x28

    move/from16 v0, v17

    if-ne v8, v0, :cond_d

    .line 229
    const/4 v6, 0x1

    .line 268
    :cond_a
    :goto_6
    if-eqz v6, :cond_c

    .line 269
    if-nez v5, :cond_b

    .line 270
    packed-switch v6, :pswitch_data_0

    .line 282
    :goto_7
    add-int/lit8 v7, v10, 0x1

    .line 284
    :cond_b
    if-ne v8, v3, :cond_18

    .line 285
    add-int/lit8 v5, v5, 0x1

    .line 200
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 230
    :cond_d
    const/16 v17, 0x5b

    move/from16 v0, v17

    if-ne v8, v0, :cond_e

    .line 231
    const/4 v6, 0x2

    goto :goto_6

    .line 232
    :cond_e
    # invokes: Lmiui/maml/data/Expression;->isDigitCharStart(C)Z
    invoke-static {v8}, Lmiui/maml/data/Expression;->access$300(C)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 234
    add-int/lit8 v11, v10, 0x1

    .line 235
    .restart local v11    # "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    if-ge v11, v12, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 236
    add-int/lit8 v11, v11, 0x1

    .line 239
    :cond_f
    :goto_8
    if-ge v11, v12, :cond_10

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    # invokes: Lmiui/maml/data/Expression;->isDigitCharRest(C)Z
    invoke-static/range {v17 .. v17}, Lmiui/maml/data/Expression;->access$400(C)Z

    move-result v17

    if-nez v17, :cond_11

    .line 243
    :cond_10
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 244
    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 239
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 245
    .end local v11    # "j":I
    :cond_12
    # invokes: Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z
    invoke-static {v8}, Lmiui/maml/data/Expression;->access$500(C)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 248
    add-int/lit8 v11, v10, 0x1

    .restart local v11    # "j":I
    :goto_9
    if-ge v11, v12, :cond_13

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    # invokes: Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z
    invoke-static/range {v17 .. v17}, Lmiui/maml/data/Expression;->access$600(C)Z

    move-result v17

    if-nez v17, :cond_14

    .line 252
    :cond_13
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 253
    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 248
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 254
    .end local v11    # "j":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 255
    add-int/lit8 v14, v10, 0x1

    .line 256
    .local v14, "pos":I
    :goto_a
    if-ge v14, v12, :cond_16

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v17

    if-nez v17, :cond_17

    .line 260
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lmiui/maml/data/Expression$Ope;

    move-result-object v13

    .line 261
    .local v13, "ope":Lmiui/maml/data/Expression$Ope;
    sget-object v17, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v17

    if-eq v13, v0, :cond_a

    .line 262
    move-object/from16 v0, p0

    iput v14, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 263
    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v13}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V

    goto/16 :goto_2

    .line 256
    .end local v13    # "ope":Lmiui/maml/data/Expression$Ope;
    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 272
    .end local v14    # "pos":I
    :pswitch_0
    const/16 v3, 0x28

    .line 273
    const/16 v4, 0x29

    .line 274
    sget-object v16, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 275
    goto/16 :goto_7

    .line 277
    :pswitch_1
    const/16 v3, 0x5b

    .line 278
    const/16 v4, 0x5d

    .line 279
    sget-object v16, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto/16 :goto_7

    .line 286
    :cond_18
    if-ne v8, v4, :cond_c

    .line 287
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_c

    .line 288
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 289
    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 295
    .end local v8    # "c":C
    :cond_19
    if-eqz v5, :cond_1a

    .line 296
    const-string v17, "Expression"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mismatched bracket:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 183
    return-void
.end method
