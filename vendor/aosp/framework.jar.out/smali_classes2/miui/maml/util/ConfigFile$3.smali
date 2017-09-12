.class Lmiui/maml/util/ConfigFile$3;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
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
    .line 276
    iput-object p1, p0, Lmiui/maml/util/ConfigFile$3;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, 0x0

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lmiui/maml/util/ConfigFile$3;->this$0:Lmiui/maml/util/ConfigFile;

    new-instance v1, Lmiui/maml/util/ConfigFile$Gadget;

    const-string v2, "path"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-static {p1, v3, v5}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "y"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->putGadget(Lmiui/maml/util/ConfigFile$Gadget;)V

    .line 284
    :cond_0
    return-void
.end method
