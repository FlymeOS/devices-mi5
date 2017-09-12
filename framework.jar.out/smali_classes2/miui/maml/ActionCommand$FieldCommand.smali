.class Lmiui/maml/ActionCommand$FieldCommand;
.super Lmiui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1796
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$BaseMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1797
    const-string v1, "field"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 1798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FieldCommand, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    .line 1799
    const-string v1, "method"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "method":Ljava/lang/String;
    const-string v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1801
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    const-string v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .prologue
    .line 1841
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 1843
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 1846
    :cond_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 1848
    :try_start_0
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1875
    :cond_1
    :goto_0
    return-void

    .line 1851
    :pswitch_0
    iget-boolean v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    if-eqz v2, :cond_2

    .line 1852
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->prepareParams()V

    .line 1853
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1854
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ActionCommand"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1857
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_1

    .line 1858
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1859
    .local v1, "returnValue":Ljava/lang/Object;
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1869
    .end local v1    # "returnValue":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ActionCommand"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1871
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1872
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Field target is null. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1848
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 1809
    invoke-super {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 1810
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1813
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    goto :goto_0

    .line 1810
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected loadField()V
    .locals 5

    .prologue
    .line 1822
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1823
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    .line 1824
    .local v1, "target":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1825
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    .line 1828
    .end local v1    # "target":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1830
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :goto_0
    return-void

    .line 1831
    :catch_0
    move-exception v0

    .line 1832
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1835
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    const-string v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
