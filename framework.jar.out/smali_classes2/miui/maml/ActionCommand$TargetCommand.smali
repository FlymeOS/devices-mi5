.class abstract Lmiui/maml/ActionCommand$TargetCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    }
.end annotation


# instance fields
.field protected mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field protected mTargetIndex:Lmiui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;

.field protected mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1298
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1299
    const-string v1, "target"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1300
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1304
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "targetIndex"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    .line 1305
    const-string v1, "targetType"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1307
    const-string v1, "element"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1308
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1314
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 1315
    return-void

    .line 1309
    :cond_2
    const-string/jumbo v1, "var"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1310
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_0

    .line 1311
    :cond_3
    const-string v1, "ctor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_0
.end method


# virtual methods
.method protected getTarget()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1350
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move-object v0, v2

    .line 1375
    :cond_0
    :goto_0
    return-object v0

    .line 1352
    :pswitch_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 1353
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ElementGroup;->getChild(I)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    goto :goto_0

    .line 1355
    :cond_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 1358
    :pswitch_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1359
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1360
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 1361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1362
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1364
    :cond_2
    const-string v1, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target with index is not an Array variable, name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iput-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    .end local v0    # "obj":Ljava/lang/Object;
    :cond_3
    move-object v0, v2

    .line 1371
    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .prologue
    .line 1319
    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    .line 1320
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1323
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1324
    .local v0, "targetElement":Lmiui/maml/elements/ScreenElement;
    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 1325
    if-nez v0, :cond_1

    .line 1326
    const-string v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find ScreenElement target, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 1328
    invoke-static {v0}, Lmiui/maml/elements/ElementGroup;->isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1329
    const-string v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target with index is not an ArrayGroup, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    goto :goto_0

    .line 1337
    .end local v0    # "targetElement":Lmiui/maml/elements/ScreenElement;
    :pswitch_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1339
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 1341
    :cond_2
    const-string v1, "ActionCommand"

    const-string v2, "MethodCommand, type=var, empty target name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
