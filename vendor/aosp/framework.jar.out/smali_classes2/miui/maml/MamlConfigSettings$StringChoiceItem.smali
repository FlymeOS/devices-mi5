.class Lmiui/maml/MamlConfigSettings$StringChoiceItem;
.super Lmiui/maml/MamlConfigSettings$ValueChoiceItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringChoiceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 533
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$StringChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 537
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->OnValueChange(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v0}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;->mId:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "objValue":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x1

    return v0
.end method
