.class abstract Lmiui/maml/MamlConfigSettings$VariableItem;
.super Lmiui/maml/MamlConfigSettings$Item;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "VariableItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 411
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$VariableItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected abstract setValue(Ljava/lang/String;)V
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$VariableItem;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$VariableItem;->OnValueChange(Ljava/lang/Object;)Z

    goto :goto_0
.end method
