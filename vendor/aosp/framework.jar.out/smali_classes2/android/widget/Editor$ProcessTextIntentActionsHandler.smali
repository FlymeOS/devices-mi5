.class final Landroid/widget/Editor$ProcessTextIntentActionsHandler;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessTextIntentActionsHandler"
.end annotation


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 6122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6123
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 6120
    invoke-direct {p0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public initializeAccessibilityActions()V
    .locals 0

    .prologue
    .line 6129
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 6137
    return-void
.end method

.method public performAccessibilityAction(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 6146
    const/4 v0, 0x0

    return v0
.end method
