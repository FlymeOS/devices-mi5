.class Lcom/android/server/MiuiInputFilter$ClickableRect;
.super Ljava/lang/Object;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickableRect"
.end annotation


# instance fields
.field public mClickListener:Ljava/lang/Runnable;

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    .line 122
    iput-object p2, p0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    .line 123
    return-void
.end method
