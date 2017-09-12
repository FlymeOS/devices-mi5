.class public Lmiui/maml/data/FileBinder;
.super Lmiui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field protected mDirFormatter:Lmiui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 58
    invoke-direct {p0, p1}, Lmiui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 59
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v2, "FileBinder"

    const-string v3, "FileBinder node is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v2, "filter"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "filter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "dirExp"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 93
    .local v0, "dirExp":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string v4, "dir"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    .line 94
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 91
    .end local v0    # "dirExp":Lmiui/maml/data/Expression;
    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateVariables()V
    .locals 6

    .prologue
    .line 111
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 112
    .local v0, "count":I
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/FileBinder$Variable;

    .line 113
    .local v3, "v":Lmiui/maml/data/FileBinder$Variable;
    iget-object v4, v3, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, v3, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v2, v4

    .line 116
    .local v2, "index":I
    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lmiui/maml/data/FileBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 111
    .end local v0    # "count":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_1
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    goto :goto_0

    .line 116
    .restart local v0    # "count":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int v5, v2, v0

    aget-object v4, v4, v5

    goto :goto_2

    .line 118
    .end local v2    # "index":I
    .end local v3    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/FileBinder$Variable;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/FileBinder$Variable;

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 63
    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->refresh()V

    .line 64
    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 103
    new-instance v0, Lmiui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 74
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "dir":Ljava/io/File;
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 80
    :cond_0
    const-string v2, "FileBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 83
    return-void

    .line 75
    .end local v0    # "count":I
    :cond_1
    new-instance v2, Lmiui/maml/util/FilenameExtFilter;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_1
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->tick()V

    .line 68
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 69
    return-void
.end method
