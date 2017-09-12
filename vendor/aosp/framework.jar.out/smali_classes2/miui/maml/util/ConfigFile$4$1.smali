.class Lmiui/maml/util/ConfigFile$4$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile$4;->onChild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/util/ConfigFile$4;


# direct methods
.method constructor <init>(Lmiui/maml/util/ConfigFile$4;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, 0x0

    .line 380
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "tag":Ljava/lang/String;
    const-string v4, "id"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "id":Ljava/lang/String;
    const-string v4, "StringInput"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    const-string v5, "default"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const-string v4, "CheckBox"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 385
    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v5, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    const-string v4, "default"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_1
    invoke-virtual {v5, v0, v4}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "0"

    goto :goto_1

    .line 386
    :cond_3
    const-string v4, "NumberInput"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 387
    const-string v4, "default"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    float-to-double v2, v4

    .line 388
    .local v2, "number":D
    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .end local v2    # "number":D
    :cond_4
    const-string v4, "StringChoice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 390
    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    const-string v5, "default"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_5
    const-string v4, "NumberChoice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 392
    const-string v4, "default"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    float-to-double v2, v4

    .line 393
    .restart local v2    # "number":D
    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v2    # "number":D
    :cond_6
    const-string v4, "AppPicker"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lmiui/maml/util/ConfigFile$4$1;->this$1:Lmiui/maml/util/ConfigFile$4;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/util/ConfigFile;->putTask(Lmiui/maml/util/Task;)V

    goto/16 :goto_0
.end method
