.class Lmiui/maml/ActionCommand$MultiCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MultiCommand"

.field public static final TAG_NAME1:Ljava/lang/String; = "GroupCommand"


# instance fields
.field protected mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1885
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 1887
    const/4 v0, 0x0

    new-instance v1, Lmiui/maml/ActionCommand$MultiCommand$1;

    invoke-direct {v1, p0, p1}, Lmiui/maml/ActionCommand$MultiCommand$1;-><init>(Lmiui/maml/ActionCommand$MultiCommand;Lmiui/maml/elements/ScreenElement;)V

    invoke-static {p2, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 1894
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 1926
    iget-object v2, p0, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 1927
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    goto :goto_0

    .line 1929
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1905
    iget-object v2, p0, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 1906
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    goto :goto_0

    .line 1908
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 1898
    iget-object v2, p0, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 1899
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    goto :goto_0

    .line 1901
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1912
    iget-object v2, p0, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 1913
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    goto :goto_0

    .line 1915
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 1919
    iget-object v2, p0, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 1920
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    goto :goto_0

    .line 1922
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method
