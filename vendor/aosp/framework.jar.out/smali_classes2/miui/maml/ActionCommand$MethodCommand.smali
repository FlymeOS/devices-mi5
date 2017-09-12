.class Lmiui/maml/ActionCommand$MethodCommand;
.super Lmiui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1684
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$BaseMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1685
    const-string v0, "method"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodCommand, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    .line 1687
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 10

    .prologue
    .line 1739
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->prepareParams()V

    .line 1740
    const/4 v2, 0x0

    .line 1742
    .local v2, "errorCode":I
    const/4 v3, 0x0

    .line 1743
    .local v3, "returnValue":Ljava/lang/Object;
    :try_start_0
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1768
    .end local v3    # "returnValue":Ljava/lang/Object;
    :goto_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_0

    .line 1769
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1778
    :cond_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_1

    .line 1779
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1782
    :cond_1
    :goto_1
    return-void

    .line 1746
    .restart local v3    # "returnValue":Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    .line 1747
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->loadMethod()V

    .line 1749
    :cond_2
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    .line 1750
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->getTarget()Ljava/lang/Object;

    move-result-object v4

    .line 1751
    .local v4, "target":Ljava/lang/Object;
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1752
    const/4 v2, 0x1

    .line 1753
    goto :goto_0

    .line 1754
    .end local v4    # "target":Ljava/lang/Object;
    :cond_3
    const/4 v2, -0x1

    .line 1756
    goto :goto_0

    .line 1758
    :pswitch_1
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_4

    .line 1759
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1760
    const/4 v2, 0x1

    goto :goto_0

    .line 1762
    :cond_4
    const/4 v2, -0x1

    .line 1764
    goto :goto_0

    .line 1772
    .end local v3    # "returnValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1773
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1774
    .local v0, "cause":Ljava/lang/Throwable;
    const-string v6, "ActionCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n cause: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1776
    const/4 v2, -0x2

    .line 1778
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_1

    .line 1779
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_1

    .line 1774
    :cond_5
    :try_start_3
    const-string v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1778
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_6

    .line 1779
    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v2

    invoke-virtual {v6, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_6
    throw v5

    .line 1743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .prologue
    .line 1691
    invoke-super {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 1693
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1696
    :pswitch_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 1697
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->loadMethod()V

    goto :goto_0

    .line 1701
    :pswitch_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1702
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 1703
    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 1704
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 1706
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "init, fail to find method. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1711
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    const-string v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "init, class is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected loadMethod()V
    .locals 5

    .prologue
    .line 1719
    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1720
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    .line 1721
    .local v1, "target":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1722
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 1725
    .end local v1    # "target":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1727
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_0
    const-string v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "loadMethod(), successful.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :goto_1
    return-void

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "loadMethod(). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1733
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    const-string v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "loadMethod(), class is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
