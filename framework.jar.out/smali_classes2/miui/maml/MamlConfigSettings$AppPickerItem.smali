.class Lmiui/maml/MamlConfigSettings$AppPickerItem;
.super Lmiui/maml/MamlConfigSettings$PickerItem;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickerItem"
.end annotation


# instance fields
.field private mDefaultTask:Lmiui/maml/util/Task;

.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 1

    .prologue
    .line 619
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/MamlConfigSettings$PickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/MamlConfigSettings;
    .param p2, "x1"    # Lmiui/maml/MamlConfigSettings$1;

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 637
    move-object v0, p1

    check-cast v0, Lmiui/maml/util/Task;

    .line 638
    .local v0, "task":Lmiui/maml/util/Task;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/maml/util/ConfigFile;->putTask(Lmiui/maml/util/Task;)V

    .line 639
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;->setValuePreview(Ljava/lang/String;)V

    .line 640
    const/4 v1, 0x1

    return v1

    .line 639
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 654
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 655
    const/4 v1, 0x0

    .line 670
    :goto_0
    return v1

    .line 657
    :cond_0
    new-instance v0, Lmiui/maml/util/Task;

    invoke-direct {v0}, Lmiui/maml/util/Task;-><init>()V

    .line 658
    .local v0, "task":Lmiui/maml/util/Task;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->mId:Ljava/lang/String;

    iput-object v1, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    .line 659
    if-eqz p2, :cond_1

    .line 660
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    .line 661
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 662
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    .line 663
    const-string v1, "android.intent.action.MAIN"

    iput-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    .line 664
    const-string v1, "AppPickerItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$AppPickerItem;->OnValueChange(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 668
    :cond_1
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->mDefaultTask:Lmiui/maml/util/Task;

    goto :goto_1
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 624
    invoke-super {p0, p1}, Lmiui/maml/MamlConfigSettings$PickerItem;->onBuild(Lorg/w3c/dom/Element;)V

    .line 625
    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->mDefaultTask:Lmiui/maml/util/Task;

    .line 626
    return-void
.end method

.method public onClick()Z
    .locals 3

    .prologue
    .line 630
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    const-class v2, Lmiui/maml/ThirdAppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    iget v2, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lmiui/maml/MamlConfigSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 632
    const/4 v1, 0x1

    return v1
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->this$0:Lmiui/maml/MamlConfigSettings;

    # getter for: Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    invoke-static {v1}, Lmiui/maml/MamlConfigSettings;->access$1100(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFile()Lmiui/maml/util/ConfigFile;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 646
    .local v0, "task":Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    .line 647
    iget-object v1, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;->setValuePreview(Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$AppPickerItem;->mDefaultTask:Lmiui/maml/util/Task;

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;->OnValueChange(Ljava/lang/Object;)Z

    goto :goto_0
.end method
