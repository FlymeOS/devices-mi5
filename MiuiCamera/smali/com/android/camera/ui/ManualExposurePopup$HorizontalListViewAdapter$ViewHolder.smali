.class Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManualExposurePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->this$1:Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;Lcom/android/camera/ui/ManualExposurePopup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
    .param p2, "x1"    # Lcom/android/camera/ui/ManualExposurePopup$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method
