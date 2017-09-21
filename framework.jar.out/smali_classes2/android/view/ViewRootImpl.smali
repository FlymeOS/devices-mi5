.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STARTED:I = 0x1b

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STOPPED:I = 0x1a

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field mBlockResizeBuffer:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawDuringWindowsAnimating:Z

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mPrivilegedWindow:Ljava/lang/String;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemainingFrameCount:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowSession:Landroid/view/IWindowSession;

.field mWindowsAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 150
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 156
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 170
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 171
    iput v3, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 175
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 178
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 180
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 245
    const-string v0, "pq"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 251
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 252
    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 256
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 269
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 271
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 279
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 280
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 304
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 305
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 312
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 313
    iput-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 324
    const-string v0, "com.tencent.mm/com.tencent.mm.ui.LauncherUI"

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPrivilegedWindow:Ljava/lang/String;

    .line 341
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 343
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 353
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 421
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 885
    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 3534
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 6064
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 6099
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 6109
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 6195
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 365
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 367
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 370
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 373
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 374
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 375
    iput v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 376
    iput v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 381
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 383
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 384
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 385
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 386
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 387
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 388
    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 389
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 390
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 392
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 394
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 395
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 397
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 400
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 401
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 402
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 403
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 404
    return-void

    :cond_0
    move-object v0, v1

    .line 353
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic access$200(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 415
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 416
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 407
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 408
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 409
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/InputEvent;

    .prologue
    .line 5991
    iget v4, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 5992
    check-cast v3, Landroid/view/MotionEvent;

    .line 5993
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    .line 5995
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 5996
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    shr-int/lit8 v1, v4, 0x4

    .line 5997
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_0

    .line 5998
    or-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 6001
    .end local v0    # "buttonState":I
    .end local v1    # "compatButtonState":I
    .end local v2    # "mask":I
    .end local v3    # "motion":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1164
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1169
    :goto_0
    return-void

    .line 1166
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 5248
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_1

    .line 5280
    :cond_0
    :goto_0
    return v1

    .line 5253
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5254
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 5259
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 5268
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5269
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    .line 5275
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5276
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_0
.end method

.method private collectViewAttributes()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1172
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v3, :cond_1

    .line 1174
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1175
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1176
    .local v0, "oldScreenOn":Z
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1177
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1178
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1179
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1180
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1181
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1182
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1183
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_1

    .line 1186
    :cond_0
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1187
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1188
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1189
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1190
    const/4 v2, 0x1

    .line 1193
    .end local v0    # "oldScreenOn":Z
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v2
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5956
    const-wide/16 v2, 0x8

    const-string v1, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5958
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 5959
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 5963
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5964
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 5969
    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    if-eqz v0, :cond_3

    .line 5970
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 5974
    :goto_1
    return-void

    .line 5966
    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_2
    goto :goto_0

    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_2

    .line 5972
    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5718
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 5720
    .local v0, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v0, :cond_1

    .line 5721
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5722
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 5724
    :cond_0
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 5725
    invoke-virtual {v0, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 5727
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 5728
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 5730
    :cond_1
    return-void
.end method

.method private draw(Z)V
    .locals 34
    .param p1, "fullRedrawNeeded"    # Z

    .prologue
    .line 2522
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 2523
    .local v9, "surface":Landroid/view/Surface;
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2695
    :cond_0
    :goto_0
    return-void

    .line 2531
    :cond_1
    sget-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v2, :cond_3

    .line 2532
    sget-object v3, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2533
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 2534
    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2535
    .local v20, "count":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 2536
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v2, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 2535
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 2538
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    .end local v20    # "count":I
    .end local v27    # "i":I
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 2543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v2, :cond_4

    .line 2544
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 2545
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 2548
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v17, 0x1

    .line 2550
    .local v17, "animating":Z
    :goto_2
    if-eqz v17, :cond_9

    .line 2551
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v21

    .line 2555
    .local v21, "curScrollY":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_5

    .line 2556
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 2557
    const/16 p1, 0x1

    .line 2558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_5

    .line 2559
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 2563
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    .line 2564
    .local v18, "appScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 2566
    .local v13, "scalingRequired":Z
    const/16 v30, 0x0

    .line 2567
    .local v30, "resizeAlpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_6

    .line 2568
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    sub-long v22, v2, v4

    .line 2569
    .local v22, "deltaTime":J
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-long v2, v2

    cmp-long v2, v22, v2

    if-gez v2, :cond_a

    .line 2570
    move-wide/from16 v0, v22

    long-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 2571
    .local v16, "amt":F
    sget-object v2, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    .line 2572
    const/16 v17, 0x1

    .line 2573
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    rsub-int v0, v2, 0xff

    move/from16 v30, v0

    .line 2579
    .end local v16    # "amt":F
    .end local v22    # "deltaTime":J
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2580
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_b

    .line 2582
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 2583
    if-eqz v17, :cond_0

    .line 2584
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_7

    .line 2585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2587
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_0

    .line 2538
    .end local v13    # "scalingRequired":Z
    .end local v14    # "dirty":Landroid/graphics/Rect;
    .end local v17    # "animating":Z
    .end local v18    # "appScale":F
    .end local v21    # "curScrollY":I
    .end local v30    # "resizeAlpha":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2548
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2553
    .restart local v17    # "animating":Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v21, v0

    .restart local v21    # "curScrollY":I
    goto/16 :goto_3

    .line 2575
    .restart local v13    # "scalingRequired":Z
    .restart local v18    # "appScale":F
    .restart local v22    # "deltaTime":J
    .restart local v30    # "resizeAlpha":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_4

    .line 2592
    .end local v22    # "deltaTime":J
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    :cond_b
    if-eqz p1, :cond_c

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2594
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v18

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2606
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 2608
    const/4 v11, 0x0

    .line 2609
    .local v11, "xOffset":I
    move/from16 v12, v21

    .line 2610
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    .line 2611
    .local v29, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v29, :cond_15

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2612
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_5
    if-eqz v7, :cond_d

    .line 2613
    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    .line 2614
    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    .line 2617
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2620
    :cond_d
    const/4 v15, 0x0

    .line 2621
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    .line 2622
    .local v24, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_f

    .line 2623
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 2624
    .local v19, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v26

    .line 2625
    .local v26, "hasFocus":Z
    if-nez v26, :cond_e

    .line 2626
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 2628
    :cond_e
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2629
    const/4 v15, 0x1

    .line 2633
    .end local v19    # "bounds":Landroid/graphics/Rect;
    .end local v26    # "hasFocus":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    const-wide/32 v32, 0xf4240

    div-long v4, v4, v32

    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 2636
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v2, :cond_10

    if-eqz v15, :cond_14

    .line 2637
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2639
    move/from16 v28, v15

    .line 2642
    .local v28, "invalidateRoot":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2644
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v2, v12, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v2, v11, :cond_12

    .line 2645
    :cond_11
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 2646
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 2647
    const/16 v28, 0x1

    .line 2649
    :cond_12
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 2651
    if-eqz v28, :cond_13

    .line 2652
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 2655
    :cond_13
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 2657
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 2691
    .end local v28    # "invalidateRoot":Z
    :cond_14
    if-eqz v17, :cond_0

    .line 2692
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2693
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2611
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 2668
    .restart local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2673
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2680
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2681
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2675
    :catch_0
    move-exception v25

    .line 2676
    .local v25, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_0

    .line 2685
    .end local v25    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 2808
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 2809
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2810
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2811
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2812
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2813
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2818
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 2815
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2816
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 2706
    :try_start_0
    iget v3, p6, Landroid/graphics/Rect;->left:I

    .line 2707
    .local v3, "left":I
    iget v5, p6, Landroid/graphics/Rect;->top:I

    .line 2708
    .local v5, "top":I
    iget v4, p6, Landroid/graphics/Rect;->right:I

    .line 2709
    .local v4, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 2711
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 2715
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v6, p6, Landroid/graphics/Rect;->left:I

    if-ne v3, v6, :cond_0

    iget v6, p6, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_0

    iget v6, p6, Landroid/graphics/Rect;->right:I

    if-ne v4, v6, :cond_0

    iget v6, p6, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v6, :cond_1

    .line 2717
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2721
    :cond_1
    iget v6, p0, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2749
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p4, :cond_2

    if-eqz p3, :cond_3

    .line 2750
    :cond_2
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2753
    :cond_3
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 2754
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2755
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v7, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2764
    neg-int v6, p3

    int-to-float v6, v6

    neg-int v7, p4

    int-to-float v7, v7

    :try_start_2
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2765
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_4

    .line 2766
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 2768
    :cond_4
    if-eqz p5, :cond_6

    iget v6, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    :goto_0
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 2769
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 2771
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2773
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2775
    :try_start_3
    iget-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v6, :cond_5

    .line 2777
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2782
    :cond_5
    :try_start_4
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2794
    const/4 v6, 0x1

    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :goto_1
    return v6

    .line 2722
    :catch_0
    move-exception v2

    .line 2723
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 2724
    const/4 v6, 0x0

    goto :goto_1

    .line 2725
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v2

    .line 2726
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not lock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2730
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2731
    const/4 v6, 0x0

    goto :goto_1

    .line 2768
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 2775
    :catchall_0
    move-exception v6

    :try_start_5
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v7, :cond_7

    .line 2777
    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_7
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2781
    :catchall_1
    move-exception v6

    .line 2782
    :try_start_6
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2787
    throw v6

    .line 2783
    :catch_2
    move-exception v2

    .line 2784
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2785
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2787
    const/4 v6, 0x0

    goto :goto_1

    .line 2783
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 2784
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2785
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2787
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 5579
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5580
    if-nez p3, :cond_1

    .line 5581
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5597
    :cond_0
    return-void

    .line 5584
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5585
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 5588
    check-cast v1, Landroid/view/ViewGroup;

    .line 5589
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5590
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 5593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5594
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5595
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 5594
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 738
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 739
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 742
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    move v2, v6

    .line 748
    .local v2, "hardwareAccelerated":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 749
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 762
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    move v0, v6

    .line 764
    .local v0, "fakeHwAccelerated":Z
    :goto_2
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    move v1, v6

    .line 767
    .local v1, "forceHwAccelerated":Z
    :goto_3
    if-eqz v0, :cond_5

    .line 771
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_0

    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    .end local v2    # "hardwareAccelerated":Z
    :cond_2
    move v2, v7

    .line 745
    goto :goto_1

    .restart local v2    # "hardwareAccelerated":Z
    :cond_3
    move v0, v7

    .line 762
    goto :goto_2

    .restart local v0    # "fakeHwAccelerated":Z
    :cond_4
    move v1, v7

    .line 764
    goto :goto_3

    .line 772
    .restart local v1    # "forceHwAccelerated":Z
    :cond_5
    sget-boolean v8, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v8, :cond_6

    sget-boolean v8, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v8, :cond_0

    if-eqz v1, :cond_0

    .line 774
    :cond_6
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_7

    .line 775
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->destroy()V

    .line 778
    :cond_7
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 779
    .local v4, "insets":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_8

    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-nez v8, :cond_8

    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_8

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v8, :cond_a

    :cond_8
    move v3, v6

    .line 781
    .local v3, "hasSurfaceInsets":Z
    :goto_4
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    move v5, v6

    .line 782
    .local v5, "translucent":Z
    :goto_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Landroid/view/HardwareRenderer;->create(Landroid/content/Context;Z)Landroid/view/HardwareRenderer;

    move-result-object v8

    iput-object v8, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 783
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v7, :cond_0

    .line 784
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 785
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto/16 :goto_0

    .end local v3    # "hasSurfaceInsets":Z
    .end local v5    # "translucent":Z
    :cond_a
    move v3, v7

    .line 779
    goto :goto_4

    .restart local v3    # "hasSurfaceInsets":Z
    :cond_b
    move v5, v7

    .line 781
    goto :goto_5
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 3573
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 3578
    :goto_0
    return v0

    .line 3575
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 3576
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 3578
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3582
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3586
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3587
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3588
    invoke-static {v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3589
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 3593
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 3602
    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :goto_0
    return v2

    .line 3597
    .restart local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .restart local v1    # "focused":Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    goto :goto_0

    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :cond_1
    move v2, v3

    .line 3602
    goto :goto_0
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3612
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3613
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 3614
    check-cast v1, Landroid/view/ViewGroup;

    .line 3615
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3625
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :goto_1
    return-object v1

    .line 3619
    .restart local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 3620
    goto :goto_1

    .line 3622
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3624
    goto :goto_0

    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_2
    move-object v1, v2

    .line 3625
    goto :goto_1
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5977
    const-wide/16 v2, 0x8

    const-string v1, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5980
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v1, :cond_1

    .line 5981
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 5982
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 5987
    .end local v0    # "handled":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 5988
    return-void

    .line 5981
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5984
    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3206
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 3207
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 3208
    check-cast v1, Landroid/view/ViewGroup;

    .line 3209
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3210
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3211
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 3210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3214
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 2854
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 2855
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2856
    .local v1, "value":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1160031

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2858
    .local v0, "resolved":Z
    if-eqz v0, :cond_0

    .line 2859
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 2863
    .end local v0    # "resolved":Z
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2821
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v6, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 2822
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2849
    :cond_0
    :goto_0
    return v5

    .line 2826
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 2827
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_0

    .line 2831
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 2832
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_3

    .line 2833
    invoke-virtual {v1, p1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 2841
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2842
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2843
    iget v6, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v6, v6

    iget v7, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2844
    iget-object v6, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v5, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2847
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2849
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    move v5, v4

    goto :goto_0

    .line 2834
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v6, :cond_0

    .line 2835
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_1

    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_4
    move v4, v5

    .line 2849
    goto :goto_2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 5420
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 5421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5423
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 5424
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 5426
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    .line 6570
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_0

    .line 6571
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 6573
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 6574
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 6575
    move-object v0, p1

    .line 6576
    .local v0, "firstCurrent":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 6577
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6578
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6579
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 6580
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 6582
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6585
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_2
    move-object v2, p2

    .line 6586
    .local v2, "secondCurrent":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_5

    .line 6587
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6588
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 6599
    .end local v2    # "secondCurrent":Landroid/view/View;
    :goto_2
    return-object v2

    .line 6591
    .restart local v2    # "secondCurrent":Landroid/view/View;
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6592
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 6593
    check-cast v2, Landroid/view/View;

    goto :goto_1

    .line 6595
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 6598
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 6599
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .prologue
    .line 5607
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 5608
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    .line 5609
    if-eqz v3, :cond_0

    .line 5610
    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 5613
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 5614
    check-cast v1, Landroid/view/ViewGroup;

    .line 5616
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5617
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5618
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 5617
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5621
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1197
    const/4 v0, 0x0

    .line 1199
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1200
    or-int/lit16 v0, v0, 0x500

    .line 1202
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1203
    or-int/lit16 v0, v0, 0x300

    .line 1205
    :cond_1
    return v0
.end method

.method private static getRootMeasureSpec(II)I
    .locals 2
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2365
    packed-switch p1, :pswitch_data_0

    .line 2377
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2380
    .local v0, "measureSpec":I
    :goto_0
    return v0

    .line 2369
    .end local v0    # "measureSpec":I
    :pswitch_0
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2370
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2373
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2374
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 2365
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .prologue
    .line 6910
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 6911
    .local v0, "rq":Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    .line 6916
    :goto_0
    return-object v0

    .line 6914
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 6915
    .restart local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2288
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2289
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    .line 2290
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2291
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2292
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3

    .line 2295
    :cond_0
    const/4 v0, 0x0

    .line 2296
    .local v0, "gone":Z
    move-object v3, v5

    .line 2298
    .local v3, "parent":Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_1

    .line 2299
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 2300
    const/4 v0, 0x1

    .line 2309
    :cond_1
    if-nez v0, :cond_3

    .line 2310
    if-nez v4, :cond_2

    .line 2311
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2313
    .restart local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2290
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2303
    .restart local v0    # "gone":Z
    .restart local v3    # "parent":Landroid/view/View;
    :cond_4
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_5

    .line 2304
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v3    # "parent":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3    # "parent":Landroid/view/View;
    goto :goto_1

    .line 2306
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 2317
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-nez p2, :cond_9

    .line 2319
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    .line 2320
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2321
    .restart local v5    # "view":Landroid/view/View;
    :goto_3
    if-eqz v5, :cond_8

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_8

    .line 2323
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    .line 2324
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 2325
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v5    # "view":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_3

    .line 2327
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 2319
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2332
    .end local v5    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2333
    return-object v4
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 5292
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 5293
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 5295
    .local v3, "what":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 5300
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 5364
    .end local v3    # "what":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 5365
    return-void

    .line 5304
    .restart local v3    # "what":I
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 5305
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5306
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 5312
    :goto_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_5

    .line 5313
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 5314
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 5315
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 5318
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_4

    .line 5319
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 5322
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 5323
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 5327
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5330
    .local v1, "prevDragView":Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 5333
    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_7

    .line 5335
    if-eqz v1, :cond_6

    .line 5336
    :try_start_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 5338
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 5339
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5347
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    .line 5348
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 5350
    :try_start_1
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5359
    :cond_8
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 5360
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5308
    .end local v1    # "prevDragView":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 5341
    .restart local v1    # "prevDragView":Landroid/view/View;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 5342
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5352
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5353
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .prologue
    .line 2128
    const-string v0, "ViewRootImpl"

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2130
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2132
    const-string v0, "ViewRootImpl"

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2137
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2138
    return-void

    .line 2135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 6441
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6442
    .local v7, "focusedHost":Landroid/view/View;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 6517
    :cond_0
    :goto_0
    return-void

    .line 6447
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    .line 6448
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_2

    .line 6450
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6451
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6452
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    goto :goto_0

    .line 6458
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v3

    .line 6459
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    if-nez v16, :cond_3

    if-nez v3, :cond_0

    .line 6464
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 6465
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 6468
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    .line 6469
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6470
    .local v15, "root":Landroid/view/View;
    :goto_1
    if-eqz v15, :cond_6

    if-nez v10, :cond_6

    .line 6471
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v16

    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    .line 6472
    const/4 v10, 0x1

    goto :goto_1

    .line 6474
    :cond_4
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 6475
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v15, v13

    .line 6476
    check-cast v15, Landroid/view/View;

    goto :goto_1

    .line 6478
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 6484
    .end local v13    # "parent":Landroid/view/ViewParent;
    :cond_6
    if-eqz v10, :cond_0

    .line 6488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v8

    .line 6489
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 6490
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v6, v0, :cond_7

    .line 6492
    const/4 v6, -0x1

    .line 6496
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 6497
    .local v12, "oldBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 6498
    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_8

    .line 6501
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 6502
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 6506
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 6508
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 6511
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v11

    .line 6512
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 6513
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 6514
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1012
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1013
    .local v2, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1014
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1015
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1019
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1022
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1023
    .local v0, "appScale":F
    iget v3, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 1025
    .local v1, "intersected":Z
    if-nez v1, :cond_1

    .line 1026
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1028
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    .line 1029
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1031
    :cond_3
    return-void
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInTouchMode()Z
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 441
    .local v0, "windowSession":Landroid/view/IWindowSession;
    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v1

    .line 447
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 5213
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 5228
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5226
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5213
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6004
    instance-of v5, p0, Landroid/view/KeyEvent;

    if-eqz v5, :cond_1

    move-object v1, p0

    .line 6005
    check-cast v1, Landroid/view/KeyEvent;

    .line 6006
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 6010
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return v3

    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    move v3, v4

    .line 6006
    goto :goto_0

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v2, p0

    .line 6008
    check-cast v2, Landroid/view/MotionEvent;

    .line 6009
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6010
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 5237
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3197
    if-ne p0, p1, :cond_1

    .line 3202
    :cond_0
    :goto_0
    return v1

    .line 3201
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3202
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 6

    .prologue
    const/16 v5, 0x82

    const/4 v2, 0x0

    .line 3629
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3630
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3631
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3632
    .local v1, "focusedView":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 3650
    .end local v1    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 3635
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    .line 3645
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3646
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3647
    invoke-virtual {v0, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    goto :goto_0
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 10
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .prologue
    const/high16 v9, 0x1000000

    .line 1212
    const/4 v5, 0x0

    .line 1218
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    .line 1219
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1224
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1225
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    const v6, 0x105000e

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1226
    const/4 v0, 0x0

    .line 1227
    .local v0, "baseSize":I
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1228
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 1231
    :cond_0
    if-eqz v0, :cond_1

    if-le p4, v0, :cond_1

    .line 1232
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1233
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1234
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1237
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_4

    .line 1238
    const/4 v3, 0x1

    .line 1256
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 1257
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1258
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v1

    .line 1259
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1260
    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1261
    :cond_2
    const/4 v5, 0x1

    .line 1271
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_3
    return v5

    .line 1241
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    add-int v6, v0, p4

    div-int/lit8 v0, v6, 0x2

    .line 1244
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1245
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    .line 1250
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 5852
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5853
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_0

    .line 5854
    iget v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 5855
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5856
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5861
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 5862
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 5863
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 5864
    return-object v0

    .line 5858
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .restart local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_0
.end method

.method private performDraw()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x8

    const/4 v9, 0x0

    .line 2467
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mDisplayState:I

    if-ne v8, v12, :cond_1

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v8, :cond_1

    .line 2519
    :cond_0
    :goto_0
    return-void

    .line 2471
    :cond_1
    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2472
    .local v4, "fullRedrawNeeded":Z
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2474
    iput-boolean v12, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2475
    const-string v8, "draw"

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2477
    :try_start_0
    invoke-direct {p0, v4}, Landroid/view/ViewRootImpl;->draw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2479
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2480
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2485
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 2486
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 2487
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 2488
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/RenderNode;

    invoke-virtual {v8}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 2487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2479
    .end local v3    # "count":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v8

    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 2480
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v8

    .line 2490
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    :cond_2
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2493
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_3
    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v8, :cond_0

    .line 2494
    iput-boolean v9, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2495
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_4

    .line 2496
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->fence()V

    .line 2502
    :cond_4
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2503
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2504
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 2505
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_6

    .line 2506
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v1, v0, v6

    .line 2507
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v1, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_5

    .line 2508
    check-cast v1, Landroid/view/SurfaceHolder$Callback2;

    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2506
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2515
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    :try_start_1
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2516
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 12
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    .prologue
    .line 2202
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2203
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2204
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2206
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2212
    .local v1, "host":Landroid/view/View;
    const-wide/16 v2, 0x8

    const-string v0, "layout"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2214
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2217
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2218
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_1

    .line 2223
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2225
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_1

    .line 2229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2232
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2233
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 2234
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2235
    .local v11, "view":Landroid/view/View;
    const-string v0, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLayout() improperly called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during layout: running second layout pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 2233
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2239
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 2241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2242
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 2248
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2249
    if-eqz v10, :cond_1

    .line 2250
    move-object v6, v10

    .line 2252
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    new-instance v2, Landroid/view/ViewRootImpl$2;

    invoke-direct {v2, p0, v6}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2269
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2271
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2272
    return-void

    .line 2269
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .locals 4
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .prologue
    const-wide/16 v2, 0x8

    .line 2141
    const-string v0, "measure"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2143
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2147
    return-void

    .line 2145
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 69

    .prologue
    .line 1327
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1335
    .local v5, "host":Landroid/view/View;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1339
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1340
    const/16 v68, 0x0

    .line 1341
    .local v68, "windowSizeMayChange":Z
    const/16 v49, 0x0

    .line 1342
    .local v49, "newSurface":Z
    const/16 v59, 0x0

    .line 1343
    .local v59, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1348
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v62

    .line 1349
    .local v62, "viewVisibility":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v62

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_13

    :cond_2
    const/16 v63, 0x1

    .line 1352
    .local v63, "viewVisibilityChanged":Z
    :goto_1
    const/16 v53, 0x0

    .line 1353
    .local v53, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_3

    .line 1354
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1355
    const/16 v59, 0x1

    .line 1356
    move-object/from16 v53, v6

    .line 1358
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v29

    .line 1359
    .local v29, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v10, :cond_4

    .line 1360
    move-object/from16 v53, v6

    .line 1361
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1362
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1363
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_14

    .line 1364
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, -0x81

    move-object/from16 v0, v53

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1365
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1372
    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    .line 1375
    .local v35, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_16

    .line 1376
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1377
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1379
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7de

    if-eq v4, v10, :cond_5

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7db

    if-ne v4, v10, :cond_15

    .line 1382
    :cond_5
    new-instance v56, Landroid/graphics/Point;

    invoke-direct/range {v56 .. v56}, Landroid/graphics/Point;-><init>()V

    .line 1383
    .local v56, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1384
    move-object/from16 v0, v56

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1385
    .local v8, "desiredWindowWidth":I
    move-object/from16 v0, v56

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1396
    .end local v56    # "size":Landroid/graphics/Point;
    .local v9, "desiredWindowHeight":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v62

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1400
    const/16 v63, 0x0

    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1404
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_6

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1407
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 1409
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1424
    :cond_7
    :goto_4
    if-eqz v63, :cond_a

    .line 1425
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v62

    iput v0, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1426
    move/from16 v0, v62

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1427
    if-nez v62, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_9

    .line 1428
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1430
    :cond_9
    const/16 v4, 0x8

    move/from16 v0, v62

    if-ne v0, v4, :cond_a

    .line 1433
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1438
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v4, :cond_b

    .line 1439
    invoke-virtual {v5}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1443
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 1445
    const/16 v44, 0x0

    .line 1447
    .local v44, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_18

    :cond_c
    const/16 v46, 0x1

    .line 1448
    .local v46, "layoutRequested":Z
    :goto_5
    if-eqz v46, :cond_e

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1452
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_1a

    .line 1455
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v4, :cond_19

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1456
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    :cond_d
    :goto_7
    move-object/from16 v4, p0

    .line 1495
    invoke-direct/range {v4 .. v9}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v68, v68, v4

    .line 1499
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1500
    move-object/from16 v53, v6

    .line 1502
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_10

    .line 1503
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1504
    move-object/from16 v53, v6

    .line 1507
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_25

    .line 1508
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1509
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v55, v0

    .line 1513
    .local v55, "resizeMode":I
    if-nez v55, :cond_25

    .line 1514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1515
    .local v22, "N":I
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_8
    move/from16 v0, v40

    move/from16 v1, v22

    if-ge v0, v1, :cond_23

    .line 1516
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1517
    const/16 v55, 0x10

    .line 1515
    :cond_12
    add-int/lit8 v40, v40, 0x1

    goto :goto_8

    .line 1349
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v22    # "N":I
    .end local v29    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v35    # "frame":Landroid/graphics/Rect;
    .end local v40    # "i":I
    .end local v44    # "insetsChanged":Z
    .end local v46    # "layoutRequested":Z
    .end local v53    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v55    # "resizeMode":I
    .end local v63    # "viewVisibilityChanged":Z
    :cond_13
    const/16 v63, 0x0

    goto/16 :goto_1

    .line 1367
    .restart local v29    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v53    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v63    # "viewVisibilityChanged":Z
    :cond_14
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v53

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1368
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_2

    .line 1387
    .restart local v35    # "frame":Landroid/graphics/Rect;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v52

    .line 1389
    .local v52, "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v52

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1390
    .restart local v8    # "desiredWindowWidth":I
    move-object/from16 v0, v52

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v9    # "desiredWindowHeight":I
    goto/16 :goto_3

    .line 1413
    .end local v8    # "desiredWindowWidth":I
    .end local v9    # "desiredWindowHeight":I
    .end local v52    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_16
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1414
    .restart local v8    # "desiredWindowWidth":I
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1415
    .restart local v9    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v8, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v9, v4, :cond_7

    .line 1418
    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1419
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1420
    const/16 v68, 0x1

    goto/16 :goto_4

    .line 1447
    .restart local v44    # "insetsChanged":Z
    :cond_18
    const/16 v46, 0x0

    goto/16 :goto_5

    .line 1455
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v46    # "layoutRequested":Z
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1458
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1459
    const/16 v44, 0x1

    .line 1461
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1462
    const/16 v44, 0x1

    .line 1464
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1465
    const/16 v44, 0x1

    .line 1467
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1468
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1472
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1473
    const/16 v44, 0x1

    .line 1475
    :cond_1f
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v4, v10, :cond_20

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_d

    .line 1477
    :cond_20
    const/16 v68, 0x1

    .line 1479
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7de

    if-eq v4, v10, :cond_21

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7db

    if-ne v4, v10, :cond_22

    .line 1482
    :cond_21
    new-instance v56, Landroid/graphics/Point;

    invoke-direct/range {v56 .. v56}, Landroid/graphics/Point;-><init>()V

    .line 1483
    .restart local v56    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1484
    move-object/from16 v0, v56

    iget v8, v0, Landroid/graphics/Point;->x:I

    .line 1485
    move-object/from16 v0, v56

    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 1486
    goto/16 :goto_7

    .line 1487
    .end local v56    # "size":Landroid/graphics/Point;
    :cond_22
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v52

    .line 1488
    .restart local v52    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v52

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1489
    move-object/from16 v0, v52

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_7

    .line 1520
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v52    # "packageMetrics":Landroid/util/DisplayMetrics;
    .restart local v22    # "N":I
    .restart local v40    # "i":I
    .restart local v55    # "resizeMode":I
    :cond_23
    if-nez v55, :cond_24

    .line 1521
    const/16 v55, 0x20

    .line 1523
    :cond_24
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v55

    if-eq v4, v0, :cond_25

    .line 1525
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v55

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1528
    move-object/from16 v53, v6

    .line 1533
    .end local v22    # "N":I
    .end local v40    # "i":I
    .end local v55    # "resizeMode":I
    :cond_25
    if-eqz v53, :cond_27

    .line 1534
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_26

    .line 1535
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1536
    const/4 v4, -0x3

    move-object/from16 v0, v53

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1539
    :cond_26
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x2000000

    and-int/2addr v4, v11

    if-eqz v4, :cond_3f

    const/4 v4, 0x1

    :goto_9
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 1543
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v4, :cond_28

    .line 1544
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1545
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1546
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1547
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_28

    .line 1551
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v15}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v4

    or-int v68, v68, v4

    .line 1557
    :cond_28
    if-eqz v46, :cond_29

    .line 1561
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1564
    :cond_29
    if-eqz v46, :cond_40

    if-eqz v68, :cond_40

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_2b

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_2a

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v8, :cond_2a

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v10, :cond_2b

    :cond_2a
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_40

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v9, :cond_40

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v10, :cond_40

    :cond_2b
    const/16 v67, 0x1

    .line 1574
    .local v67, "windowShouldResize":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v4

    if-nez v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v4, :cond_41

    :cond_2c
    const/16 v30, 0x1

    .line 1578
    .local v30, "computesInternalInsets":Z
    :goto_b
    const/16 v45, 0x0

    .line 1579
    .local v45, "insetsPending":Z
    const/16 v54, 0x0

    .line 1581
    .local v54, "relayoutResult":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_2d

    if-nez v67, :cond_2d

    if-nez v44, :cond_2d

    if-nez v63, :cond_2d

    if-eqz v53, :cond_69

    .line 1584
    :cond_2d
    if-nez v62, :cond_2f

    .line 1594
    if-eqz v30, :cond_42

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_2e

    if-eqz v63, :cond_42

    :cond_2e
    const/16 v45, 0x1

    .line 1597
    :cond_2f
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_30

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1599
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 1602
    :cond_30
    const/16 v39, 0x0

    .line 1603
    .local v39, "hwInitialized":Z
    const/16 v31, 0x0

    .line 1604
    .local v31, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v36

    .line 1612
    .local v36, "hadSurface":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_32

    .line 1616
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1621
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v10, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/view/FrameInfo;->addFlags(J)V

    .line 1623
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v60

    .line 1624
    .local v60, "surfaceGenerationId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v62

    move/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v54

    .line 1634
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_33

    .line 1637
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_43

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    iput v10, v4, Landroid/content/res/Configuration;->seq:I

    .line 1641
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const/16 v51, 0x1

    .line 1643
    .local v51, "overscanInsetsChanged":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    const/16 v31, 0x1

    .line 1645
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    const/16 v64, 0x1

    .line 1647
    .local v64, "visibleInsetsChanged":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const/16 v58, 0x1

    .line 1649
    .local v58, "stableInsetsChanged":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    const/16 v50, 0x1

    .line 1650
    .local v50, "outsetsChanged":Z
    :goto_12
    if-eqz v31, :cond_35

    .line 1651
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v4, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v4, :cond_34

    if-eqz v6, :cond_34

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v10

    and-int/lit16 v4, v4, 0x600

    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_34

    if-eqz v6, :cond_34

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    if-nez v4, :cond_34

    .line 1661
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1713
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1717
    :cond_35
    if-eqz v51, :cond_36

    .line 1718
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1722
    const/16 v31, 0x1

    .line 1724
    :cond_36
    if-eqz v58, :cond_37

    .line 1725
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1729
    const/16 v31, 0x1

    .line 1731
    :cond_37
    if-nez v31, :cond_38

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v4, v10, :cond_38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v10, v10, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-ne v4, v10, :cond_38

    if-eqz v50, :cond_39

    .line 1735
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1736
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 1737
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1738
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1739
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1741
    :cond_39
    if-eqz v64, :cond_3a

    .line 1742
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1747
    :cond_3a
    if-nez v36, :cond_49

    .line 1748
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1756
    const/16 v49, 0x1

    .line 1757
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1758
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 1763
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_3b

    .line 1765
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v39

    .line 1767
    if-eqz v39, :cond_3b

    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_3b

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1814
    .end local v50    # "outsetsChanged":Z
    .end local v51    # "overscanInsetsChanged":Z
    .end local v58    # "stableInsetsChanged":Z
    .end local v60    # "surfaceGenerationId":I
    .end local v64    # "visibleInsetsChanged":Z
    :cond_3b
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1815
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1820
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v4, v10, :cond_3c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eq v4, v10, :cond_3d

    .line 1821
    :cond_3c
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1822
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1825
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_51

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1832
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1835
    if-nez v36, :cond_4f

    .line 1836
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1838
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1839
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 1841
    .local v25, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_4e

    .line 1842
    move-object/from16 v23, v25

    .local v23, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v47, v0

    .local v47, "len$":I
    const/16 v41, 0x0

    .local v41, "i$":I
    :goto_14
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_4e

    aget-object v24, v23, v41

    .line 1843
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1842
    add-int/lit8 v41, v41, 0x1

    goto :goto_14

    .line 1539
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v30    # "computesInternalInsets":Z
    .end local v31    # "contentInsetsChanged":Z
    .end local v36    # "hadSurface":Z
    .end local v39    # "hwInitialized":Z
    .end local v41    # "i$":I
    .end local v45    # "insetsPending":Z
    .end local v47    # "len$":I
    .end local v54    # "relayoutResult":I
    .end local v67    # "windowShouldResize":Z
    :cond_3f
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1564
    :cond_40
    const/16 v67, 0x0

    goto/16 :goto_a

    .line 1574
    .restart local v67    # "windowShouldResize":Z
    :cond_41
    const/16 v30, 0x0

    goto/16 :goto_b

    .line 1594
    .restart local v30    # "computesInternalInsets":Z
    .restart local v45    # "insetsPending":Z
    .restart local v54    # "relayoutResult":I
    :cond_42
    const/16 v45, 0x0

    goto/16 :goto_c

    .line 1637
    .restart local v31    # "contentInsetsChanged":Z
    .restart local v36    # "hadSurface":Z
    .restart local v39    # "hwInitialized":Z
    .restart local v60    # "surfaceGenerationId":I
    :cond_43
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 1641
    :cond_44
    const/16 v51, 0x0

    goto/16 :goto_e

    .line 1643
    .restart local v51    # "overscanInsetsChanged":Z
    :cond_45
    const/16 v31, 0x0

    goto/16 :goto_f

    .line 1645
    :cond_46
    const/16 v64, 0x0

    goto/16 :goto_10

    .line 1647
    .restart local v64    # "visibleInsetsChanged":Z
    :cond_47
    const/16 v58, 0x0

    goto/16 :goto_11

    .line 1649
    .restart local v58    # "stableInsetsChanged":Z
    :cond_48
    const/16 v50, 0x0

    goto/16 :goto_12

    .line 1773
    .restart local v50    # "outsetsChanged":Z
    :catch_0
    move-exception v33

    .line 1774
    .local v33, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_0

    .line 1808
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v50    # "outsetsChanged":Z
    .end local v51    # "overscanInsetsChanged":Z
    .end local v58    # "stableInsetsChanged":Z
    .end local v60    # "surfaceGenerationId":I
    .end local v64    # "visibleInsetsChanged":Z
    :catch_1
    move-exception v4

    goto/16 :goto_13

    .line 1779
    .restart local v50    # "outsetsChanged":Z
    .restart local v51    # "overscanInsetsChanged":Z
    .restart local v58    # "stableInsetsChanged":Z
    .restart local v60    # "surfaceGenerationId":I
    .restart local v64    # "visibleInsetsChanged":Z
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1782
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_4a

    .line 1783
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1785
    :cond_4a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1786
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_4b

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v4, v10}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 1789
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_4c

    .line 1790
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1792
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1794
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1796
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->destroy()V

    goto/16 :goto_13

    .line 1798
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v60

    if-eq v0, v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_3b

    .line 1800
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1802
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_13

    .line 1803
    :catch_2
    move-exception v33

    .line 1804
    .restart local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1846
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v50    # "outsetsChanged":Z
    .end local v51    # "overscanInsetsChanged":Z
    .end local v58    # "stableInsetsChanged":Z
    .end local v60    # "surfaceGenerationId":I
    .end local v64    # "visibleInsetsChanged":Z
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_4e
    const/16 v59, 0x1

    .line 1848
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_4f
    if-eqz v59, :cond_50

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v11, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v4, v10, v11, v12, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 1852
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v25, :cond_50

    .line 1853
    move-object/from16 v23, v25

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v47, v0

    .restart local v47    # "len$":I
    const/16 v41, 0x0

    .restart local v41    # "i$":I
    :goto_15
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_50

    aget-object v24, v23, v41

    .line 1854
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v10, v11, v12}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1853
    add-int/lit8 v41, v41, 0x1

    goto :goto_15

    .line 1859
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v41    # "i$":I
    .end local v47    # "len$":I
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1878
    :cond_51
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v37, v0

    .line 1879
    .local v37, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v37, :cond_53

    invoke-virtual/range {v37 .. v37}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1880
    if-nez v39, :cond_52

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v37 .. v37}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v10

    if-ne v4, v10, :cond_52

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v37 .. v37}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v10

    if-eq v4, v10, :cond_53

    .line 1883
    :cond_52
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/view/HardwareRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 1885
    if-nez v39, :cond_53

    .line 1886
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/Surface;)V

    .line 1887
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1892
    :cond_53
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_59

    .line 1893
    :cond_54
    and-int/lit8 v4, v54, 0x1

    if-eqz v4, :cond_68

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v34

    .line 1895
    .local v34, "focusChangedDueToTouchMode":Z
    if-nez v34, :cond_55

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v4, v10, :cond_55

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-ne v4, v10, :cond_55

    if-eqz v31, :cond_59

    .line 1897
    :cond_55
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v28

    .line 1898
    .local v28, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v4, v10}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v27

    .line 1907
    .local v27, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1912
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v65

    .line 1913
    .local v65, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    .line 1914
    .local v38, "height":I
    const/16 v48, 0x0

    .line 1916
    .local v48, "measureAgain":Z
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_56

    .line 1917
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v65

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v65, v65, v4

    .line 1918
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v65

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 1920
    const/16 v48, 0x1

    .line 1922
    :cond_56
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-lez v4, :cond_57

    .line 1923
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v38

    int-to-float v4, v4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int v38, v38, v4

    .line 1924
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v38

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 1926
    const/16 v48, 0x1

    .line 1929
    :cond_57
    if-eqz v48, :cond_58

    .line 1933
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1936
    :cond_58
    const/16 v46, 0x1

    .line 1970
    .end local v27    # "childHeightMeasureSpec":I
    .end local v28    # "childWidthMeasureSpec":I
    .end local v31    # "contentInsetsChanged":Z
    .end local v34    # "focusChangedDueToTouchMode":Z
    .end local v36    # "hadSurface":Z
    .end local v37    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v38    # "height":I
    .end local v39    # "hwInitialized":Z
    .end local v48    # "measureAgain":Z
    .end local v65    # "width":I
    :cond_59
    :goto_18
    if-eqz v46, :cond_6d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_5a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_6d

    :cond_5a
    const/16 v32, 0x1

    .line 1971
    .local v32, "didLayout":Z
    :goto_19
    if-nez v32, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_6e

    :cond_5b
    const/16 v61, 0x1

    .line 1973
    .local v61, "triggerGlobalLayoutListener":Z
    :goto_1a
    if-eqz v32, :cond_5d

    .line 1974
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v9}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 1979
    iget v4, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_5d

    .line 1982
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v17, 0x0

    aget v12, v12, v17

    iget v0, v5, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v12, v17

    iget v0, v5, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v12, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    iget v0, v5, Landroid/view/View;->mBottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v5, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v10, v11, v12, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 1987
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1988
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_5c

    .line 1989
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1992
    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1993
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1994
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1997
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v10, v11}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2010
    :cond_5d
    :goto_1b
    if-eqz v61, :cond_5e

    .line 2011
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2015
    :cond_5e
    if-eqz v30, :cond_60

    .line 2017
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v43, v0

    .line 2018
    .local v43, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6f

    const/4 v4, 0x1

    :goto_1c
    iput-boolean v4, v10, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2025
    if-nez v45, :cond_5f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 2026
    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_70

    .line 2033
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v43

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 2034
    .local v13, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v43

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .line 2035
    .local v14, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v43

    iget-object v10, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v10}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v15

    .line 2043
    .local v15, "touchableRegion":Landroid/graphics/Region;
    :goto_1d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v43

    iget v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v10 .. v15}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2050
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_60
    :goto_1e
    const/16 v57, 0x0

    .line 2052
    .local v57, "skipDraw":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_71

    .line 2056
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_61

    .line 2057
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_61

    .line 2058
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/view/View;->requestFocus(I)Z

    .line 2073
    :cond_61
    :goto_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2074
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2075
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2076
    move/from16 v0, v62

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2078
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_62

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v4

    if-nez v4, :cond_62

    .line 2079
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v42

    .line 2081
    .local v42, "imTarget":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v42

    if-eq v0, v4, :cond_62

    .line 2082
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2083
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 2084
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_62

    if-eqz v42, :cond_62

    .line 2085
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v10}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_73

    const/16 v20, 0x1

    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2094
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v42    # "imTarget":Z
    :cond_62
    and-int/lit8 v4, v54, 0x2

    if-eqz v4, :cond_63

    .line 2095
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2098
    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_64

    if-eqz v62, :cond_74

    :cond_64
    const/16 v26, 0x1

    .line 2101
    .local v26, "cancelDraw":Z
    :goto_21
    if-nez v26, :cond_78

    if-nez v49, :cond_78

    .line 2102
    if-eqz v57, :cond_65

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_77

    .line 2103
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_76

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_76

    .line 2104
    const/16 v40, 0x0

    .restart local v40    # "i":I
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_75

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2104
    add-int/lit8 v40, v40, 0x1

    goto :goto_22

    .line 1860
    .end local v26    # "cancelDraw":Z
    .end local v32    # "didLayout":Z
    .end local v40    # "i":I
    .end local v57    # "skipDraw":Z
    .end local v61    # "triggerGlobalLayoutListener":Z
    .restart local v31    # "contentInsetsChanged":Z
    .restart local v36    # "hadSurface":Z
    .restart local v39    # "hwInitialized":Z
    :cond_66
    if-eqz v36, :cond_51

    .line 1861
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1862
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 1863
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1864
    if-eqz v25, :cond_67

    .line 1865
    move-object/from16 v23, v25

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v47, v0

    .restart local v47    # "len$":I
    const/16 v41, 0x0

    .restart local v41    # "i$":I
    :goto_23
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_67

    aget-object v24, v23, v41

    .line 1866
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1865
    add-int/lit8 v41, v41, 0x1

    goto :goto_23

    .line 1869
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v41    # "i$":I
    .end local v47    # "len$":I
    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1871
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    iput-object v10, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1873
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_16

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v10, v10, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 1893
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v37    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    :cond_68
    const/4 v4, 0x0

    goto/16 :goto_17

    .line 1954
    .end local v31    # "contentInsetsChanged":Z
    .end local v36    # "hadSurface":Z
    .end local v37    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v39    # "hwInitialized":Z
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-ne v4, v10, :cond_6a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-eq v4, v10, :cond_6c

    :cond_6a
    const/16 v66, 0x1

    .line 1956
    .local v66, "windowMoved":Z
    :goto_24
    if-eqz v66, :cond_59

    .line 1957
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_6b

    .line 1958
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 1960
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1961
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1964
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_59

    .line 1965
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v4, v10}, Landroid/view/HardwareRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    goto/16 :goto_18

    .line 1954
    .end local v66    # "windowMoved":Z
    :cond_6c
    const/16 v66, 0x0

    goto :goto_24

    .line 1970
    :cond_6d
    const/16 v32, 0x0

    goto/16 :goto_19

    .line 1971
    .restart local v32    # "didLayout":Z
    :cond_6e
    const/16 v61, 0x0

    goto/16 :goto_1a

    .line 2022
    .restart local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v61    # "triggerGlobalLayoutListener":Z
    :cond_6f
    const/4 v4, 0x0

    goto/16 :goto_1c

    .line 2037
    :cond_70
    move-object/from16 v0, v43

    iget-object v13, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2038
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v43

    iget-object v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2039
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v43

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    goto/16 :goto_1d

    .line 2066
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v57    # "skipDraw":Z
    :cond_71
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v4, :cond_61

    .line 2067
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    if-gtz v4, :cond_72

    .line 2068
    const/16 v57, 0x1

    .line 2070
    :cond_72
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    goto/16 :goto_1f

    .line 2086
    .restart local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v42    # "imTarget":Z
    :cond_73
    const/16 v20, 0x0

    goto/16 :goto_20

    .line 2098
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v42    # "imTarget":Z
    :cond_74
    const/16 v26, 0x0

    goto/16 :goto_21

    .line 2107
    .restart local v26    # "cancelDraw":Z
    .restart local v40    # "i":I
    :cond_75
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2110
    .end local v40    # "i":I
    :cond_76
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    .line 2124
    :cond_77
    :goto_25
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    goto/16 :goto_0

    .line 2113
    :cond_78
    if-nez v62, :cond_79

    .line 2115
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_25

    .line 2116
    :cond_79
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_77

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_77

    .line 2117
    const/16 v40, 0x0

    .restart local v40    # "i":I
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_7a

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2117
    add-int/lit8 v40, v40, 0x1

    goto :goto_26

    .line 2120
    :cond_7a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_25

    .line 2045
    .end local v26    # "cancelDraw":Z
    .end local v40    # "i":I
    .end local v57    # "skipDraw":Z
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    .restart local v14    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v15    # "touchableRegion":Landroid/graphics/Region;
    .restart local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_3
    move-exception v4

    goto/16 :goto_1e

    .line 1998
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "visibleInsets":Landroid/graphics/Rect;
    .end local v15    # "touchableRegion":Landroid/graphics/Region;
    .end local v43    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_4
    move-exception v4

    goto/16 :goto_1b
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    .line 6338
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 6339
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 6342
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 6343
    return-void
.end method

.method private profileRendering(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2414
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_2

    .line 2415
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 2417
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2420
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_3

    .line 2421
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 2422
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 2433
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2438
    :cond_2
    :goto_0
    return-void

    .line 2435
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v0, 0x0

    .line 5868
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 5869
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 5871
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 5872
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 5873
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5874
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5876
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 20
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5443
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v17, v0

    .line 5444
    .local v17, "appScale":F
    const/16 v19, 0x0

    .line 5445
    .local v19, "restore":Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 5446
    const/16 v19, 0x1

    .line 5447
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 5448
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 5450
    :cond_0
    if-eqz p1, :cond_1

    .line 5453
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 5455
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 5457
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 5458
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5463
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v18

    .line 5471
    .local v18, "relayoutResult":I
    if-eqz v19, :cond_3

    .line 5472
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 5475
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 5476
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 5477
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5478
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5479
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5480
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5482
    :cond_4
    return v18

    .line 5463
    .end local v18    # "relayoutResult":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .prologue
    .line 6350
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 6351
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6353
    :cond_0
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5912
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v1, :cond_0

    .line 5913
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 5914
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5915
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5916
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5918
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2447
    .local v4, "nowTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2448
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2449
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2464
    :cond_0
    :goto_0
    return-void

    .line 2451
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2452
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2453
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v2, v4, v8

    .line 2454
    .local v2, "frameTime":J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v4, v8

    .line 2455
    .local v6, "totalTime":J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 2457
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 2458
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 2459
    .local v0, "fps":F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iput-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2461
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1072
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    .prologue
    .line 6526
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    .prologue
    .line 6556
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    .prologue
    .line 6541
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6218
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 6221
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 6222
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 6223
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .prologue
    .line 6686
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 6688
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setOpaque(Z)V

    .line 6690
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 6603
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6604
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6607
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6377
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 6633
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3066
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3067
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3068
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 6373
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 5547
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 5548
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 699
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 701
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mBlockResizeBuffer:Z

    .line 706
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->stopDrawing()V

    .line 711
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 5630
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_0

    .line 5631
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 5632
    const/4 v0, 0x0

    .line 5642
    :goto_0
    return v0

    .line 5635
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    .line 5636
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 5641
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 5642
    const/4 v0, 0x1

    goto :goto_0

    .line 5638
    :cond_1
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispatchAppVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 6264
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6265
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6266
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6267
    return-void

    .line 6265
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 1322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1323
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 6325
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6327
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6329
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6288
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6289
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6290
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6291
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3109
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 3111
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3114
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 3115
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 3117
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 3119
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 3121
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3123
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3126
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3127
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 3129
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 3131
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 3132
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 3133
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->dispose()V

    .line 3134
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 3135
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 3137
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_2

    .line 3138
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 3139
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 3142
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3148
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 3149
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3150
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 3153
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 3155
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 3156
    return-void

    .line 3143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 6295
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 6296
    const/16 v1, 0x10

    .line 6297
    .local v1, "what":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 6301
    :goto_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6302
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6303
    return-void

    .line 6299
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_0
    const/16 v1, 0xf

    .restart local v1    # "what":I
    goto :goto_0
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 5733
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5734
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5735
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    .prologue
    .line 6270
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6271
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6272
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 6227
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .prologue
    .line 6230
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6231
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6232
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6233
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6234
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6235
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6236
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 6199
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6200
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6201
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6210
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 6211
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 4
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 6205
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6206
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6207
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 6214
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 6215
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6245
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6246
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6247
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6248
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 6
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 5766
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 5767
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5768
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 5769
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 5770
    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p2, v2

    .line 5772
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5773
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5774
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 5744
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_8

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5745
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_0

    .line 5746
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5747
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5748
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5749
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 5751
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 5752
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_9

    const/4 v2, 0x1

    .line 5753
    .local v2, "sameProcessCall":Z
    :goto_1
    if-eqz v2, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v3

    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_1
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 5754
    if-eqz v2, :cond_2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, v3

    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_2
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5755
    if-eqz v2, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, v3

    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_3
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 5756
    if-eqz v2, :cond_4

    if-eqz p8, :cond_4

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p8, v3

    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_4
    iput-object p8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 5757
    if-eqz v2, :cond_5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, v3

    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_5
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 5758
    if-eqz v2, :cond_6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p5, v3

    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_6
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 5759
    if-eqz v2, :cond_7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p6, v3

    .end local p6    # "outsets":Landroid/graphics/Rect;
    :cond_7
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 5760
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5761
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5762
    return-void

    .line 5744
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sameProcessCall":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p6    # "outsets":Landroid/graphics/Rect;
    .restart local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    .line 5752
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 6307
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 6308
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 6309
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 6310
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 6311
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 6312
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6313
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6257
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 6258
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 6260
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 6261
    return-void
.end method

.method public dispatchWindowAnimationStarted(I)V
    .locals 3
    .param p1, "remainingFrameCount"    # I

    .prologue
    .line 6316
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6318
    return-void
.end method

.method public dispatchWindowAnimationStopped()V
    .locals 2

    .prologue
    .line 6321
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6322
    return-void
.end method

.method public dispatchWindowShown()V
    .locals 2

    .prologue
    .line 6283
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6284
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 1081
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1083
    :cond_0
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 6041
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 6042
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 6043
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 6044
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 6051
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 6054
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 6056
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5646
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 5648
    monitor-enter p0

    .line 5649
    :try_start_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v3, :cond_0

    .line 5650
    monitor-exit p0

    .line 5683
    :goto_0
    return-void

    .line 5652
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 5653
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_1

    .line 5654
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 5657
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_4

    .line 5658
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 5660
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 5661
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 5662
    .local v0, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v3, v0, :cond_5

    .line 5663
    .local v1, "viewVisibilityChanged":Z
    :goto_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 5668
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 5670
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5676
    :cond_3
    :goto_2
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 5680
    .end local v0    # "viewVisibility":I
    .end local v1    # "viewVisibilityChanged":Z
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 5681
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5682
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    goto :goto_0

    .restart local v0    # "viewVisibility":I
    :cond_5
    move v1, v2

    .line 5662
    goto :goto_1

    .line 5681
    .end local v0    # "viewVisibility":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 5672
    .restart local v0    # "viewVisibility":I
    .restart local v1    # "viewVisibilityChanged":Z
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method doProcessInputEvents()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 5922
    :goto_0
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v6, :cond_2

    .line 5923
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5924
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5925
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v6, :cond_0

    .line 5926
    iput-object v11, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5928
    :cond_0
    iput-object v11, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5930
    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 5931
    const-wide/16 v6, 0x4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v9, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v6, v7, v8, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 5934
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    .line 5935
    .local v0, "eventTime":J
    move-wide v4, v0

    .line 5936
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v6, v6, Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    .line 5937
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    .line 5938
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-lez v6, :cond_1

    .line 5939
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v4

    .line 5942
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 5944
    invoke-direct {p0, v3}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 5949
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_2
    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v6, :cond_3

    .line 5950
    iput-boolean v10, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 5951
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 5953
    :cond_3
    return-void
.end method

.method doTraversal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1142
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 1143
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1144
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1146
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_0

    .line 1147
    const-string v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1150
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 1152
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v0, :cond_1

    .line 1153
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1154
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1157
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 5551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5552
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5553
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5554
    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5555
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5556
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5557
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5558
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5559
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5560
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5561
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5562
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5563
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5564
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5565
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    .line 5566
    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5570
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 5572
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 5574
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5575
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 5576
    return-void

    .line 5568
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    .prologue
    const/4 v1, 0x0

    .line 5600
    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 5601
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5602
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 5604
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 5879
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 5880
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .prologue
    .line 5884
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 5885
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    .line 5892
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5893
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_0

    .line 5894
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5895
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5900
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 5901
    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 5904
    if-eqz p4, :cond_1

    .line 5905
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 5909
    :goto_1
    return-void

    .line 5897
    :cond_0
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 5898
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 5907
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    goto :goto_1
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 3548
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 3560
    :goto_0
    return v1

    .line 3552
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3553
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3560
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 3555
    :catch_0
    move-exception v0

    .line 3556
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 5539
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 5540
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 5541
    const/4 v0, 0x0

    .line 5543
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3077
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3078
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3079
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3080
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3095
    :cond_0
    :goto_0
    return-void

    .line 3085
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3086
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 3087
    check-cast v1, Landroid/view/ViewGroup;

    .line 3088
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3090
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 2995
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 3002
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 5430
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 5431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5434
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 5435
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 5437
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 1062
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 1063
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    .line 5409
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5410
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 5411
    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 6536
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 3072
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 6566
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    .prologue
    .line 6551
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowFlags()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 9
    .param p1, "forceConstruct"    # Z

    .prologue
    .line 1295
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_5

    .line 1296
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1297
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1298
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 1299
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 1302
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_2

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1305
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1306
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1308
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1309
    .local v2, "outsets":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-gtz v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v4, :cond_4

    .line 1310
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v1, "contentInsets":Landroid/graphics/Rect;
    move-object v0, v1

    .line 1314
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    :cond_4
    new-instance v4, Landroid/view/WindowInsets;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v6

    invoke-direct {v4, v0, v5, v3, v6}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 1318
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .end local v2    # "outsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v4
.end method

.method handleAppVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 860
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 861
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 862
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 863
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    .line 864
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 866
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPrivilegedWindow:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/WindowManagerGlobal;->mNeedServiceBoost:Z

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPrivilegedWindow:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManagerGlobal;->mNeedServiceBoost:Z

    goto :goto_0
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 4
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .prologue
    .line 5368
    iget v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_0

    .line 5372
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 5373
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 5374
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5376
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 5386
    :cond_1
    :goto_0
    return-void

    .line 5377
    :cond_2
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_3

    .line 5378
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 5381
    :cond_3
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    .line 5382
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_1

    .line 5383
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 5384
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_0
.end method

.method public handleDispatchWindowAnimationStarted(I)V
    .locals 1
    .param p1, "remainingFrameCount"    # I

    .prologue
    .line 5389
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 5390
    iput p1, p0, Landroid/view/ViewRootImpl;->mRemainingFrameCount:I

    .line 5391
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 5393
    :cond_0
    return-void
.end method

.method public handleDispatchWindowAnimationStopped()V
    .locals 1

    .prologue
    .line 5396
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    if-eqz v0, :cond_1

    .line 5397
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowsAnimating:Z

    .line 5398
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    if-eqz v0, :cond_1

    .line 5399
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 5402
    :cond_1
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    .prologue
    .line 5405
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 5406
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 880
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 881
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 882
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 883
    return-void
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 959
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 960
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 963
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 978
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 982
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 985
    if-nez p2, :cond_1

    .line 986
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1008
    :cond_0
    :goto_0
    return-object v2

    .line 988
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 992
    :cond_2
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_6

    .line 993
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 994
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 995
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_4

    .line 996
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 998
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 999
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1001
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_6

    .line 1002
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 1006
    :cond_6
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 966
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 967
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 968
    check-cast v1, Landroid/view/ViewGroup;

    .line 969
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 970
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public invokeFunctor(JZ)V
    .locals 1
    .param p1, "functor"    # J
    .param p3, "waitForCompletion"    # Z

    .prologue
    .line 723
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 724
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 2156
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    .prologue
    .line 6531
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    .prologue
    .line 6561
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    .prologue
    .line 6546
    const/4 v0, 0x1

    return v0
.end method

.method public loadSystemProperties()V
    .locals 2

    .prologue
    .line 5691
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 5715
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->notifyFramePending()V

    .line 1116
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 6521
    invoke-direct {p0, p2, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 6522
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2395
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2397
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2400
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 2401
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2390
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2391
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6659
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 6664
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 6669
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 6655
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 6651
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6646
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6637
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 6642
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2407
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 2408
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 5528
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5530
    :goto_0
    return v1

    .line 5529
    :catch_0
    move-exception v0

    .line 5530
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    .line 5490
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 5493
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 5495
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 5512
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5515
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 5517
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5520
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 5497
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 5500
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 5503
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 5506
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 5509
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 3

    .prologue
    .line 925
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 926
    .local v0, "displayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 930
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 429
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3099
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3100
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3101
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3102
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 3103
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3106
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 727
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 735
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 731
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 733
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 3057
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3058
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3059
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 6616
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 6617
    .local v0, "scrolled":Z
    if-eqz p2, :cond_0

    .line 6618
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6619
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6620
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 6622
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6627
    :cond_0
    :goto_0
    return v0

    .line 6623
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6612
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 941
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 942
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 947
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 949
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 951
    :cond_0
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 2182
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return v0

    .line 2186
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2187
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    :cond_2
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-eqz v1, :cond_0

    .line 2196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v9, 0x0

    .line 6381
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v8, :cond_1

    .line 6382
    :cond_0
    const/4 v8, 0x0

    .line 6428
    :goto_0
    return v8

    .line 6386
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 6387
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    .line 6427
    :cond_2
    :goto_1
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6428
    const/4 v8, 0x1

    goto :goto_0

    .line 6389
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 6390
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 6392
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 6393
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 6394
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 6395
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    .line 6396
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 6399
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    if-ne v5, v8, :cond_3

    .line 6400
    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 6405
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 6403
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 6410
    .end local v0    # "accessibilityViewId":I
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "virtualNodeId":I
    .end local v6    # "sourceNodeId":J
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 6411
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 6413
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 6414
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 6415
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 6416
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_2

    .line 6417
    invoke-virtual {p0, v9, v9}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    .line 6424
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_2
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 6387
    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 1103
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2339
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2340
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2341
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 2345
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 2346
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 2348
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 5686
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5687
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5688
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    .line 6017
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 6018
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 6019
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 6022
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .prologue
    .line 6033
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    .line 6034
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 6035
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 6036
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 6038
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .prologue
    .line 1119
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1121
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 1122
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1124
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    .line 1125
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 1127
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 1128
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1130
    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2877
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2878
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2879
    .local v5, "vi":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2880
    .local v4, "scrollY":I
    const/4 v2, 0x0

    .line 2882
    .local v2, "handled":Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-gt v6, v9, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-gt v6, v9, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-gt v6, v9, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v9, :cond_3

    .line 2888
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2895
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2896
    .local v1, "focus":Landroid/view/View;
    if-nez v1, :cond_1

    move v6, v7

    .line 2988
    .end local v1    # "focus":Landroid/view/View;
    :goto_0
    return v6

    .line 2899
    .restart local v1    # "focus":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v3, v6

    .line 2900
    .local v3, "lastScrolledFocus":Landroid/view/View;
    :goto_1
    if-eq v1, v3, :cond_2

    .line 2904
    const/4 p1, 0x0

    .line 2909
    :cond_2
    if-ne v1, v3, :cond_8

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    .line 2974
    .end local v1    # "focus":Landroid/view/View;
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_3
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v4, v6, :cond_6

    .line 2977
    if-nez p2, :cond_e

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_e

    .line 2978
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_4

    .line 2979
    new-instance v6, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 2981
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v4, v9

    invoke-virtual {v6, v7, v8, v7, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2985
    :cond_5
    :goto_3
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_6
    move v6, v2

    .line 2988
    goto :goto_0

    .restart local v1    # "focus":Landroid/view/View;
    :cond_7
    move-object v3, v8

    .line 2899
    goto :goto_1

    .line 2919
    .restart local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_8
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 2920
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2923
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2928
    if-nez p1, :cond_b

    .line 2929
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2932
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 2933
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2947
    :cond_9
    :goto_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2951
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_c

    .line 2968
    :cond_a
    :goto_5
    const/4 v2, 0x1

    goto :goto_2

    .line 2941
    :cond_b
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 2957
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_d

    .line 2958
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    goto :goto_5

    .line 2961
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_a

    .line 2963
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_5

    .line 2982
    .end local v1    # "focus":Landroid/view/View;
    .end local v3    # "lastScrolledFocus":Landroid/view/View;
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_5

    .line 2983
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_3
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v6, 0x0

    .line 3008
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    .line 3010
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3011
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3018
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3019
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3023
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3025
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 3026
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    .line 3028
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3029
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 3031
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 3033
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 3036
    .end local v3    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3038
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 3040
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3044
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3045
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3047
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_3

    .line 3048
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3050
    :cond_3
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "newDragTarget"    # Landroid/view/View;

    .prologue
    .line 5414
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 5415
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 5417
    :cond_0
    return-void
.end method

.method public setDrawDuringWindowsAnimating(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2870
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mDrawDuringWindowsAnimating:Z

    .line 2871
    if-eqz p1, :cond_0

    .line 2872
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    .line 2874
    :cond_0
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .prologue
    .line 801
    monitor-enter p0

    .line 803
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7, p1}, Landroid/view/ViewRootImplInjector;->transformWindowType(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 805
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 806
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 807
    .local v5, "oldInsetTop":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 808
    .local v4, "oldInsetRight":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 809
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 810
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 813
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 816
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v7, 0x80

    .line 820
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 821
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 823
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 824
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 827
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 829
    :cond_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 830
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 832
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v8, v0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 835
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 837
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 839
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 841
    if-eqz p2, :cond_2

    .line 842
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 843
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 847
    :cond_2
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_3

    .line 849
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0xf1

    and-int/lit16 v9, v6, 0xf0

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 854
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 855
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 856
    monitor-exit p0

    .line 857
    return-void

    .line 856
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldHasManualSurfaceInsets":Z
    .end local v2    # "oldInsetBottom":I
    .end local v3    # "oldInsetLeft":I
    .end local v4    # "oldInsetRight":I
    .end local v5    # "oldInsetTop":I
    .end local v6    # "oldSoftInputMode":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5285
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 5286
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 1052
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 1053
    return-void
.end method

.method public setReportNextDraw()V
    .locals 1

    .prologue
    .line 6681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 6682
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 6683
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    .prologue
    .line 454
    monitor-enter p0

    .line 455
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_15

    .line 458
    invoke-static/range {p1 .. p2}, Landroid/view/ViewRootImplInjector;->transformWindowType(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 460
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    iput v5, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 471
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 p2, v0

    .line 473
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 475
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 477
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_1

    .line 478
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_1

    .line 481
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 488
    :cond_1
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v4, :cond_2

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getZ()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v23, v0

    .line 490
    .local v23, "surfaceInset":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move/from16 v0, v23

    move/from16 v1, v23

    move/from16 v2, v23

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    .end local v23    # "surfaceInset":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    .line 494
    .local v14, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_3

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 501
    :cond_3
    const/16 v22, 0x0

    .line 502
    .local v22, "restore":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_4

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 504
    const/16 v22, 0x1

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 510
    :cond_4
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_5

    .line 511
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 512
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 515
    :cond_5
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 516
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 517
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 519
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    iput v4, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 522
    if-eqz p3, :cond_6

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 526
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_7

    .line 535
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 540
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-nez v4, :cond_8

    .line 541
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 548
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v4 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v21

    .line 563
    .local v21, "res":I
    if-eqz v22, :cond_9

    .line 564
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 568
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_a

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 571
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 576
    if-gez v21, :cond_e

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 578
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 581
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v4, p0

    move/from16 v5, v21

    invoke-direct {v4, v5}, Landroid/view/ViewRootImpl;->isFlymeKeyguardAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    monitor-exit p0

    return-void

    :cond_flyme_0

    .line 582
    packed-switch v21, :pswitch_data_0

    .line 621
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 676
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v21    # "res":I
    .end local v22    # "restore":Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 519
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "restore":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 520
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v4, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 553
    :catch_0
    move-exception v16

    .line 554
    .local v16, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 555
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 557
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 560
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 561
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 563
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    if-eqz v22, :cond_d

    .line 564
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_d
    throw v4

    .line 585
    .restart local v21    # "res":I
    :pswitch_0
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid; is your activity running?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 589
    :pswitch_1
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not for an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 593
    :pswitch_2
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- app for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 597
    :pswitch_3
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 603
    :pswitch_4
    monitor-exit p0

    .line 677
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v21    # "res":I
    .end local v22    # "restore":Z
    :goto_2
    return-void

    .line 605
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v21    # "res":I
    .restart local v22    # "restore":Z
    :pswitch_5
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- another window of this type already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 609
    :pswitch_6
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- permission denied for this window type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 613
    :pswitch_7
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified display can not be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    :pswitch_8
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified window type is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 625
    :cond_e
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_f

    .line 626
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 633
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_10

    .line 634
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 638
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_12

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_11

    .line 640
    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v4, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 643
    :cond_11
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 647
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 648
    and-int/lit8 v4, v21, 0x1

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 649
    and-int/lit8 v4, v21, 0x2

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 655
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_14

    .line 656
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 660
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    .line 661
    .local v15, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v4, Landroid/view/ViewRootImpl$SyntheticInputStage;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 662
    new-instance v24, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 663
    .local v24, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-post-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 665
    .local v19, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 666
    .local v17, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 668
    .local v18, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v25, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 669
    .local v25, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v20, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-pre-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 672
    .local v20, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 673
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:pending:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 676
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v17    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v20    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v21    # "res":I
    .end local v22    # "restore":Z
    .end local v24    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v25    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_15
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 648
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v21    # "res":I
    .restart local v22    # "restore":Z
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 649
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 582
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .locals 1
    .param p1, "stopped"    # Z

    .prologue
    .line 1034
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 1038
    if-nez p1, :cond_0

    .line 1040
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1043
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 6357
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6362
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 6368
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6239
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6240
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6241
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6242
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1282
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1292
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6025
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 6026
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 6027
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 6030
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .prologue
    .line 1133
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1135
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1136
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1139
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    .prologue
    .line 3164
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v5}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 3165
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v5}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3166
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3167
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v5, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object p1, v1

    .line 3170
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_0
    sget-object v6, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3171
    :try_start_0
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 3172
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3171
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3174
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3175
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 3179
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3180
    if-nez p2, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 3181
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    .line 3182
    .local v4, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 3183
    .local v2, "currentLayoutDirection":I
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3184
    if-eq v4, v2, :cond_3

    iget v5, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 3186
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3188
    :cond_3
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3191
    .end local v2    # "currentLayoutDirection":I
    .end local v4    # "lastLayoutDirection":I
    :cond_4
    return-void

    .line 3174
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6276
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 6277
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6278
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 6279
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6280
    return-void

    :cond_0
    move v1, v3

    .line 6277
    goto :goto_0

    :cond_1
    move v2, v3

    .line 6278
    goto :goto_1
.end method

.method private isFlymeKeyguardAllowed(I)Z
    .locals 1
    .param p1, "res"    # I

    .prologue
    const/16 v0, -0x6f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mzGetMeizuFlags()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    return v0
.end method

.method public processEventForMoveWinIfNeed(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmeizu/view/MoveWinManager;->processInputEvent(Landroid/view/InputEvent;)V

    :cond_0
    return-void
.end method
