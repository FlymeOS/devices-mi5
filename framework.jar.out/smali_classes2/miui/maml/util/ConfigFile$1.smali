.class Lmiui/maml/util/ConfigFile$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/util/ConfigFile;


# direct methods
.method constructor <init>(Lmiui/maml/util/ConfigFile;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 261
    iget-object v0, p0, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lmiui/maml/util/ConfigFile;->access$000(Lmiui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
